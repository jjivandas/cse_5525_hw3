import matplotlib.pyplot as plt
import numpy as np

# Gemma-2B results (current)
k_values = [0, 1, 3]

# Similar selection
gemma_similar = [0.1202, 0.0697, 0.3108]

# Random selection
gemma_random = [0.1202, 0.0697, 0.1130]

fig, ax = plt.subplots(figsize=(6, 4))

ax.plot(k_values, gemma_similar, 'o-', color='#2196F3', linewidth=2, markersize=8, label='Gemma-2B, similar selection')
ax.plot(k_values, gemma_random, 's--', color='#FF9800', linewidth=2, markersize=8, label='Gemma-2B, random selection')

# Uncomment and fill in when codegemma results are ready:
# codegemma_similar = [XX, XX, XX]
# ax.plot(k_values, codegemma_similar, '^-', color='#4CAF50', linewidth=2, markersize=8, label='CodeGemma-7B, similar selection')

ax.set_xlabel('Number of Examples (k)', fontsize=12)
ax.set_ylabel('Record F1 Score', fontsize=12)
ax.set_title('ICL Sensitivity to Shot Count: Record F1 vs k', fontsize=13)
ax.set_xticks(k_values)
ax.legend(fontsize=10)
ax.grid(True, alpha=0.3)
ax.set_ylim(0.0, 0.45)

plt.tight_layout()
plt.savefig('a3-report-template/icl_sensitivity.pdf', bbox_inches='tight')
plt.savefig('a3-report-template/icl_sensitivity.png', dpi=150, bbox_inches='tight')
print("Saved to a3-report-template/icl_sensitivity.pdf and .png")
