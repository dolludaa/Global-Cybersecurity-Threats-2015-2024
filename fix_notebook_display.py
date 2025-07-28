import json

# Read the notebook
with open('business_analysis.ipynb', 'r', encoding='utf-8') as f:
    nb = json.load(f)

print("Исправляем типы ячеек для лучшего отображения на GitHub...")

# Fix cell types
for i, cell in enumerate(nb['cells']):
    if i <= 2 and cell['cell_type'] == 'raw':
        print(f"Изменяем ячейку {i}: raw → markdown")
        cell['cell_type'] = 'markdown'
        # Wrap content in quote blocks to make it look nice
        if cell['source']:
            # Don't change the source content, just the type
            pass

# Save the corrected notebook
with open('business_analysis.ipynb', 'w', encoding='utf-8') as f:
    json.dump(nb, f, indent=1, ensure_ascii=False)

print('✅ Notebook исправлен! Теперь GitHub должен отображать его правильно.') 