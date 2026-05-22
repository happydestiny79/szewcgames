#!/bin/bash

# One-command deploy for szewcgames GitHub Pages
# Usage: ./deploy.sh "Your commit message"

cd "$(dirname "$0")"

MESSAGE="${1:-Update student games}"

echo "🚀 Deploying to GitHub Pages..."

git add .

# Only commit if there are changes
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    git commit -m "$MESSAGE"
fi

# Pull latest changes first to avoid push rejections
echo "🔄 Pulling latest changes..."
git pull --rebase origin main || echo "⚠️  Pull had issues (continuing anyway)"

# Push
echo "📤 Pushing to GitHub..."
git push origin main

echo "✅ Deploy complete! Your site will update in a few seconds."
echo "🔗 https://happydestiny79.github.io/szewcgames/"