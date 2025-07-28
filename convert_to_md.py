import json

def notebook_to_markdown(notebook_path, markdown_path):
    with open(notebook_path, 'r', encoding='utf-8') as f:
        nb = json.load(f)
    
    markdown_content = []
    
    for cell in nb['cells']:
        if cell['cell_type'] == 'markdown':
            markdown_content.extend(cell['source'])
            markdown_content.append('\n\n')
            
        elif cell['cell_type'] == 'code':
            if cell['source']:
                markdown_content.append('```python\n')
                markdown_content.extend(cell['source'])
                markdown_content.append('\n```\n\n')
                
        elif cell['cell_type'] == 'raw':
            markdown_content.append('> ')
            content = ''.join(cell['source']).replace('\n', '\n> ')
            markdown_content.append(content)
            markdown_content.append('\n\n')
    
    with open(markdown_path, 'w', encoding='utf-8') as f:
        f.write(''.join(markdown_content))

if __name__ == "__main__":
    notebook_to_markdown('business_analysis.ipynb', 'business_analysis_readable.md')
    print("✅ Создан readable файл: business_analysis_readable.md") 