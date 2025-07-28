#!/bin/bash
# Quick save script for Jupyter to GitHub

echo "🔄 Saving Jupyter notebook to GitHub..."

# Check if there are changes to commit
if [ -z "$(git status --porcelain)" ]; then
    echo "ℹ️  No changes detected. Repository is up to date."
    exit 0
fi

# Add all changes
git add .

# Commit with timestamp
git commit -m "Update analysis notebook - $(date '+%Y-%m-%d %H:%M')"

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push origin main

# Check if push was successful
if [ $? -eq 0 ]; then
    echo "✅ Successfully saved to GitHub!"
    echo "🌐 View at: https://github.com/dolludaa/Global-Cybersecurity-Threats-2015-2024"
else
    echo "❌ Error pushing to GitHub. Please check your connection and try again."
fi 