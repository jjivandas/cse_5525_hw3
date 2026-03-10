import os, random, re, string
from collections import Counter
from tqdm import tqdm
import pickle

from torch.utils.data import Dataset, DataLoader
from torch.nn.utils.rnn import pad_sequence

import nltk
nltk.download('punkt')
from transformers import T5TokenizerFast
import torch

PAD_IDX = 0
_TOKENIZER = None

def _get_tokenizer():
    global _TOKENIZER
    if _TOKENIZER is None:
        _TOKENIZER = T5TokenizerFast.from_pretrained('google-t5/t5-small')
    return _TOKENIZER

class T5Dataset(Dataset):

    def __init__(self, data_folder, split):
        '''
        Data processing for the T5 model.
        '''
        self.split = split
        self.tokenizer = _get_tokenizer()
        # Use <extra_id_0> as BOS token for decoder
        self.bos_id = self.tokenizer.convert_tokens_to_ids('<extra_id_0>')
        self.encoder_inputs, self.decoder_targets = self.process_data(data_folder, split, self.tokenizer)

    def process_data(self, data_folder, split, tokenizer):
        nl_path = os.path.join(data_folder, f'{split}.nl')
        nl_lines = load_lines(nl_path)

        # Prefix for T5 task
        prefix = "translate English to SQL: "
        encoder_inputs = []
        for line in nl_lines:
            tokens = tokenizer(prefix + line, return_tensors=None)['input_ids']
            encoder_inputs.append(tokens)

        decoder_targets = None
        if split != 'test':
            sql_path = os.path.join(data_folder, f'{split}.sql')
            sql_lines = load_lines(sql_path)
            decoder_targets = []
            for line in sql_lines:
                tokens = tokenizer(line, return_tensors=None)['input_ids']
                decoder_targets.append(tokens)

        return encoder_inputs, decoder_targets

    def __len__(self):
        return len(self.encoder_inputs)

    def __getitem__(self, idx):
        if self.split == 'test':
            return self.encoder_inputs[idx], None
        return self.encoder_inputs[idx], self.decoder_targets[idx]

def normal_collate_fn(batch):
    '''
    Collation function to perform dynamic padding for training and evaluation with the
    development or validation set.
    '''
    encoder_seqs = [torch.tensor(item[0], dtype=torch.long) for item in batch]
    target_seqs = [torch.tensor(item[1], dtype=torch.long) for item in batch]

    # Get BOS token id (<extra_id_0>)
    tokenizer = _get_tokenizer()
    bos_id = tokenizer.convert_tokens_to_ids('<extra_id_0>')

    # Pad encoder sequences
    encoder_ids = pad_sequence(encoder_seqs, batch_first=True, padding_value=PAD_IDX)
    encoder_mask = (encoder_ids != PAD_IDX).long()

    # Decoder inputs: prepend BOS token, remove last token from targets
    decoder_input_seqs = [torch.cat([torch.tensor([bos_id]), seq[:-1]]) for seq in target_seqs]
    decoder_inputs = pad_sequence(decoder_input_seqs, batch_first=True, padding_value=PAD_IDX)

    # Decoder targets: the original target sequences
    decoder_targets = pad_sequence(target_seqs, batch_first=True, padding_value=PAD_IDX)

    # Initial decoder input: just the BOS token for each item in batch (for generation)
    initial_decoder_input = torch.full((len(batch), 1), bos_id, dtype=torch.long)

    return encoder_ids, encoder_mask, decoder_inputs, decoder_targets, initial_decoder_input

def test_collate_fn(batch):
    '''
    Collation function to perform dynamic padding for inference on the test set.
    '''
    encoder_seqs = [torch.tensor(item[0], dtype=torch.long) for item in batch]

    tokenizer = _get_tokenizer()
    bos_id = tokenizer.convert_tokens_to_ids('<extra_id_0>')

    encoder_ids = pad_sequence(encoder_seqs, batch_first=True, padding_value=PAD_IDX)
    encoder_mask = (encoder_ids != PAD_IDX).long()
    initial_decoder_input = torch.full((len(batch), 1), bos_id, dtype=torch.long)

    return encoder_ids, encoder_mask, initial_decoder_input

def get_dataloader(batch_size, split):
    data_folder = 'data'
    dset = T5Dataset(data_folder, split)
    shuffle = split == "train"
    collate_fn = normal_collate_fn if split != "test" else test_collate_fn

    dataloader = DataLoader(dset, batch_size=batch_size, shuffle=shuffle, collate_fn=collate_fn)
    return dataloader

def load_t5_data(batch_size, test_batch_size):
    train_loader = get_dataloader(batch_size, "train")
    dev_loader = get_dataloader(test_batch_size, "dev")
    test_loader = get_dataloader(test_batch_size, "test")
    
    return train_loader, dev_loader, test_loader


def load_lines(path):
    with open(path, 'r') as f:
        lines = f.readlines()
        lines = [line.strip() for line in lines]
    return lines

def load_prompting_data(data_folder):
    train_x = load_lines(os.path.join(data_folder, 'train.nl'))
    train_y = load_lines(os.path.join(data_folder, 'train.sql'))
    dev_x = load_lines(os.path.join(data_folder, 'dev.nl'))
    dev_y = load_lines(os.path.join(data_folder, 'dev.sql'))
    test_x = load_lines(os.path.join(data_folder, 'test.nl'))
    return train_x, train_y, dev_x, dev_y, test_x