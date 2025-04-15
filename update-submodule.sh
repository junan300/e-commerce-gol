#!/bin/bash

# Check if commit message is provided
if [ -z "$1" ]; then
  echo "Error: Commit message is required."
  echo "Usage: ./update-submodule.sh \"Commit message\" [branch-name]"
  exit 1
fi

# Get commit message
COMMIT_MSG="$1"

# Get current branch or use provided branch name
if [ -z "$2" ]; then
  # Get current branch for source-code submodule
  cd source-code || exit 1
  SUBMODULE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
  cd ..
  
  # Get current branch for main repo
  MAIN_BRANCH=$(git rev-parse --abbrev-ref HEAD)
else
  SUBMODULE_BRANCH="$2"
  MAIN_BRANCH="$2"
fi

echo "Updating submodule on branch: $SUBMODULE_BRANCH"
echo "Updating main repo on branch: $MAIN_BRANCH"

# Update submodule
cd source-code || exit 1
git add .
git commit -m "$COMMIT_MSG"
git push origin "$SUBMODULE_BRANCH"

# Update parent repository
cd ..
git add source-code
git commit -m "Update submodule pointer after: $COMMIT_MSG"
git push origin "$MAIN_BRANCH"

echo "Successfully updated submodule and pushed changes!" 