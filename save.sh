#!/bin/bash
echo "📝 Adding files to git..."
git add .

echo "💾 Committing changes..."
git commit -m "Update $(date '+%Y-%m-%d %H:%M')"

echo "📤 Pushing to GitHub..."
git push

echo "✅ Saved!"
echo "   📊 business_analysis.ipynb - view on GitHub" 