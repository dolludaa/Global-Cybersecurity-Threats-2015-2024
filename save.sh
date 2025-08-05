#!/bin/bash
echo "📝 Adding files to git..."
git add -A .

echo "💾 Checking for changes..."
if git diff --staged --quiet; then
    echo "ℹ️  No changes detected. Repository is up to date."
    exit 0
fi

echo "💾 Committing changes..."
git commit -m "Update $(date '+%Y-%m-%d %H:%M')"

echo "📤 Pushing to GitHub..."
git push

echo "✅ Saved!"
echo "   📊 business_analysis.ipynb - view on GitHub" 