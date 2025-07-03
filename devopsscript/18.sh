#!/bin/bash

# Exit immediately on error
set -e

# Check if we're inside a Git repository
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
  echo "Error: Not inside a Git repository."
  exit 1
fi

# Get the latest commit hash
latest_commit=$(git rev-parse HEAD)
echo "Latest commit hash: $latest_commit"

# Check if working directory is clean
if [[ -z $(git status --porcelain) ]]; then
  echo "Working directory is clean."
else
  echo "Working directory has uncommitted changes."
fi
