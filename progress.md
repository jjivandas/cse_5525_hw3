# HW3 Progress Tracker

## Overall Status
- Part 3 (Prompting): DONE
- Part 1 (T5 Fine-tune): ft_baseline DONE, ft_v2 RUNNING
- Part 2 (T5 From Scratch): scr_baseline RUNNING
- Report: NOT STARTED

---

## Part 3: Prompting — COMPLETE

All code implemented. All 6 experiments finished. Best: **3shot_similar F1=0.311**

### Experiments
| Experiment | k | Selection | Prompt Type | Rec F1 | Rec EM | SQL EM | Error Rate |
|-----------|---|-----------|-------------|--------|--------|--------|------------|
| 3shot_similar | 3 | similar | full (ptype=0) | **0.311** | 0.292 | 0.000 | — |
| 3shot_no_schema | 3 | random | no schema (ptype=1) | 0.145 | 0.133 | 0.000 | — |
| zero_shot | 0 | — | full (ptype=0) | 0.120 | 0.120 | 0.000 | 9.4% |
| 3shot_no_instruction | 3 | random | no instruction (ptype=2) | 0.115 | 0.109 | 0.000 | — |
| 3shot | 3 | random | full (ptype=0) | 0.113 | 0.109 | 0.000 | 65.5% |
| 1shot | 1 | random | full (ptype=0) | 0.070 | 0.064 | 0.000 | — |

### Key Findings (for report)
- **Similar example selection** is the single biggest improvement (0.113 → 0.311)
- Random few-shot examples actually **hurt** performance vs zero-shot (0.120 > 0.113 > 0.070)
- Removing schema slightly **helped** with random examples (0.145 vs 0.113) — schema may add noise for this small model
- Task instruction ("return only SQL") had minimal impact (0.115 vs 0.113)
- SQL EM = 0 across all experiments — model never produces exact SQL match
- High SQL error rates with more examples — longer prompts confuse the 2B model

### Commands used
```bash
python prompting.py -s 0 -m gemma --experiment_name zero_shot
python prompting.py -s 1 -m gemma --experiment_name 1shot
python prompting.py -s 3 -m gemma --experiment_name 3shot
python prompting.py -s 3 -m gemma --experiment_name 3shot_similar --selection similar
python prompting.py -s 3 -p 1 -m gemma --experiment_name 3shot_no_schema
python prompting.py -s 3 -p 2 -m gemma --experiment_name 3shot_no_instruction
```

---

## Part 1: T5 Fine-tune — IN PROGRESS

All code was already implemented. Just running with hyperparams.

### Experiments
| Experiment | LR | Epochs | Warmup | Scheduler | Patience | Rec F1 | Rec EM | SQL EM | Notes |
|-----------|-----|--------|--------|-----------|----------|--------|--------|--------|-------|
| ft_baseline | 1e-4 | 20 | 2 | cosine | 3 | **0.606** | 0.543 | 0.021 | Early stopped ~epoch 17. Best at epoch 14 |
| ft_v2 | 5e-5 | 20 | 2 | cosine | 3 | 0.506 | 0.425 | 0.017 | Worse than baseline — LR too low |

---

## Part 2: T5 From Scratch — IN PROGRESS

### Experiments
| Experiment | LR | Epochs | Warmup | Scheduler | Patience | Rec F1 | Rec EM | SQL EM | Notes |
|-----------|-----|--------|--------|-----------|----------|--------|--------|--------|-------|
| scr_baseline | 1e-1 | 30 | 3 | cosine | 5 | 0.118 | 0.118 | 0.0 | 100% SQL errors, early stopped |
| scr_v2 | 1e-2 | 50 | 5 | cosine | 7 | 0.118 | 0.118 | 0.0 | Same — still 100% SQL errors |
| scr_v3 | 0.05 | 50 | 5 | cosine | 10 | — | — | — | RUNNING |

---

## Submission Checklist
- [ ] All `results/` files included
- [ ] All `records/` files included
- [ ] NO checkpoint files in zip
- [ ] Report PDF
- [ ] Best test predictions: `results/t5_ft_ft_baseline_test.sql` (or ft_v2 if better)
- [ ] Rename final files per README format if needed

## Report Sections Needed
- [ ] Part 3: best prompt + ablation table + analysis
- [ ] Part 1: hyperparams, training curves, results
- [ ] Part 2: hyperparams, training curves, results
- [ ] Error analysis across all 3 systems
- [ ] Comparison of all 3 approaches
