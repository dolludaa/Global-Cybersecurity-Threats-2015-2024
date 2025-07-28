#!/bin/bash
echo "🔄 Converting notebook to readable format..."
python3 convert_to_md.py

echo "📝 Adding files to git..."
git add .

echo "💾 Committing changes..."
git commit -m "Update $(date '+%Y-%m-%d %H:%M')"

echo "📤 Pushing to GitHub..."
git push

echo "✅ Saved! Check both files:"
echo "   📊 business_analysis.ipynb (original notebook)"
echo "   📄 business_analysis_readable.md (readable version)" 