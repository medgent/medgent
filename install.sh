#!/bin/bash

set -e

echo "🏥 MEDGENT INSTALLER"
echo "Installing Medgent..."

# Detect OS
OS="$(uname)"
echo "Detected OS: $OS"

# Create folder
INSTALL_DIR="$HOME/medgent"
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

# Version (default latest)
VERSION="v2.0"
ZIP_URL="https://github.com/medgent/medgent/raw/main/medgent-v2.0.zip"

echo "Downloading Medgent $VERSION..."
curl -L -o medgent.zip "$ZIP_URL"

# Check unzip exists
if ! command -v unzip &> /dev/null
then
    echo "❌ unzip not found. Installing..."

    if [ "$OS" = "Linux" ]; then
        sudo apt update && sudo apt install -y unzip
    elif [ "$OS" = "Darwin" ]; then
        brew install unzip
    fi
fi

# Extract
echo "Extracting..."
unzip -o medgent.zip

# Cleanup
rm medgent.zip

echo "✅ Medgent installed successfully!"
echo "📁 Location: $INSTALL_DIR"
