#!/bin/bash
# Quick save script for Jupyter to GitHub

echo "Saving Jupyter notebook to GitHub..."
git add business_analysis.ipynb
git commit -m "Update analysis notebook - $(date '+%Y-%m-%d %H:%M')"
git push
echo "✅ Saved to GitHub successfully!" 