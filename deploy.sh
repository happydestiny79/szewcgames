#!/bin/bash

# One-command deploy for szewcgames GitHub Pages
# Usage: ./deploy.sh "Your commit message"

cd "$(dirname "$0")"

MESSAGE="${1:-Update student games}"

echo "🚀 Deploying to GitHub Pages..."
git add .
git commit -m "$MESSAGE"
git push origin main

echo "✅ Deploy complete! Your site will update in a few seconds."
echo "🔗 https://happydestiny79.github.io/szewcgames/"