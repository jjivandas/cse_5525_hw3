import os
import json
import re


def read_schema(schema_path):
    '''
    Read the .schema file and return a human-readable string describing the database schema.
    '''
    with open(schema_path, 'r') as f:
        schema = json.load(f)

    schema_str = "Database Schema:\n"
    for table_name, columns in schema['ents'].items():
        col_names = list(columns.keys())
        schema_str += f"Table: {table_name} | Columns: {', '.join(col_names)}\n"

    return schema_str


def extract_sql_query(response):
    '''
    Extract the SQL query from the model's response.
    '''
    # Remove special tokens
    response = response.replace('<bos>', '').replace('<eos>', '').replace('<pad>', '')

    # Try to find SQL between ```sql ... ``` blocks
    sql_block = re.search(r'```sql\s*(.*?)\s*```', response, re.DOTALL | re.IGNORECASE)
    if sql_block:
        return sql_block.group(1).strip()

    # Try to find SQL between ``` ... ``` blocks
    code_block = re.search(r'```\s*(SELECT.*?)\s*```', response, re.DOTALL | re.IGNORECASE)
    if code_block:
        return code_block.group(1).strip()

    # Try to find a SELECT statement directly
    select_match = re.search(r'(SELECT\s+.*?)(?:\n\n|$)', response, re.DOTALL | re.IGNORECASE)
    if select_match:
        query = select_match.group(1).strip()
        # Remove trailing incomplete lines or text after semicolon
        if ';' in query:
            query = query[:query.index(';') + 1]
        return query.strip().rstrip(';')

    # Fallback: return the last line that looks like it could be SQL
    lines = response.strip().split('\n')
    for line in reversed(lines):
        line = line.strip()
        if line.upper().startswith('SELECT'):
            return line.rstrip(';')

    # Last resort: return empty query
    return ""

def save_logs(output_path, sql_em, record_em, record_f1, error_msgs):
    '''
    Save the logs of the experiment to files.
    You can change the format as needed.
    '''
    with open(output_path, "w") as f:
        f.write(f"SQL EM: {sql_em}\nRecord EM: {record_em}\nRecord F1: {record_f1}\nModel Error Messages: {error_msgs}\n")