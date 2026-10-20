#!/bin/bash

# Exit immediately if any command fails
set -e

# --- Configuration ---
REPO_URL="https://github.com/MohammedSTurki/youtube-on-boot.git" # Replace with your repo URL
TARGET_DIR="~/.termux/boot" # Replace with your target directory name
SCRIPT_NAME="youtube_on_boot.sh" # Replace with the name of the script to make executable
# ---------------------

echo "1. Creating and entering directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR"

echo "2. Cloning repository directly into the directory..."
git clone "$REPO_URL" .

echo "3. Making '$SCRIPT_NAME' executable..."
if [ -f "$SCRIPT_NAME" ]; then
    chmod +x "$SCRIPT_NAME"
    echo "Success: '$SCRIPT_NAME' is now executable."
else
    echo "Warning: '$SCRIPT_NAME' was not found in the root of the repository."
fi

echo "Done!"