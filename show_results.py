"""Print a summary table of all prompting experiment results."""
import glob
import re

rows = []
for path in glob.glob("results/llm_*_dev_log.txt"):
    name = re.search(r"llm_(.+)_dev_log\.txt", path)
    if not name:
        continue
    name = name.group(1)
    with open(path) as f:
        text = f.read()
    sql_em = re.search(r"SQL EM:\s*([\d.]+)", text)
    rec_em = re.search(r"Record EM:\s*([\d.]+)", text)
    rec_f1 = re.search(r"Record F1:\s*([\d.]+)", text)
    if sql_em and rec_em and rec_f1:
        rows.append((name, float(sql_em.group(1)), float(rec_em.group(1)), float(rec_f1.group(1))))

rows.sort(key=lambda r: r[3], reverse=True)

print(f"{'Experiment':<24} {'SQL EM':>7}  {'Rec EM':>7}  {'Rec F1':>7}")
print(f"{'-'*24} {'-'*7}  {'-'*7}  {'-'*7}")
for name, sql_em, rec_em, rec_f1 in rows:
    print(f"{name:<24} {sql_em:>7.3f}  {rec_em:>7.3f}  {rec_f1:>7.3f}")

if not rows:
    print("No results found. Run experiments first.")
