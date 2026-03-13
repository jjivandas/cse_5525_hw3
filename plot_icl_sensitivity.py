import matplotlib.pyplot as plt
import numpy as np

k_values = [0, 1, 3]

# Gemma-2B results
gemma_similar = [0.1202, 0.0697, 0.3108]
gemma_random = [0.1202, 0.0697, 0.1130]

# CodeGemma-7B results (similar selection)
# 1-shot placeholder: will update when available
codegemma_similar = [0.1285, 0.5905, 0.6305]

fig, ax = plt.subplots(figsize=(6, 4))

# Gemma lines
ax.plot(k_values, gemma_similar, 'o-', color='#2196F3', linewidth=2, markersize=8, label='Gemma-2B, similar')
ax.plot(k_values, gemma_random, 's--', color='#FF9800', linewidth=2, markersize=8, label='Gemma-2B, random')

# CodeGemma line (skip None values)
cg_k = [k for k, v in zip(k_values, codegemma_similar) if v is not None]
cg_f1 = [v for v in codegemma_similar if v is not None]
ax.plot(cg_k, cg_f1, '^-', color='#4CAF50', linewidth=2, markersize=8, label='CodeGemma-7B, similar')

ax.set_xlabel('Number of Examples (k)', fontsize=12)
ax.set_ylabel('Record F1 Score', fontsize=12)
ax.set_title('ICL Sensitivity to Shot Count: Record F1 vs k', fontsize=13)
ax.set_xticks(k_values)
ax.legend(fontsize=9)
ax.grid(True, alpha=0.3)
ax.set_ylim(0.0, 0.70)

plt.tight_layout()
plt.savefig('a3-report-template/icl_sensitivity.pdf', bbox_inches='tight')
plt.savefig('a3-report-template/icl_sensitivity.png', dpi=150, bbox_inches='tight')
print("Saved to a3-report-template/icl_sensitivity.pdf and .png")
