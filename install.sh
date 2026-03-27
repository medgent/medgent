#!/bin/bash

set -e

echo "🏥 MEDGENT INSTALLER"
echo "🚀 Starting smart installation..."

# ===== AUTO SETTINGS =====
VERSION=${1:-"latest"}
INSTALL_DIR="$HOME/medgent"

# ===== AUTO OS DETECTION =====
OS="$(uname)"
echo "🧠 Detected OS: $OS"

# ===== AUTO VERSION HANDLING =====
if [ "$VERSION" = "v1" ]; then
  ZIP_URL="https://github.com/medgent/medgent/raw/main/medgent-v1.0.zip"
elif [ "$VERSION" = "v2" ]; then
  ZIP_URL="https://github.com/medgent/medgent/raw/main/medgent-v2.0.zip"
else
  ZIP_URL="https://github.com/medgent/medgent/raw/main/medgent-v2.0.zip"
fi

echo "📦 Installing version: $VERSION"

# ===== AUTO DEPENDENCY INSTALL =====
install_if_missing () {
  if ! command -v $1 &> /dev/null; then
    echo "⚙️ Installing $1..."
    if [ "$OS" = "Linux" ]; then
      sudo apt update && sudo apt install -y $1
    elif [ "$OS" = "Darwin" ]; then
      brew install $1
    else
      echo "❌ Unsupported OS for auto install"
    fi
  fi
}

install_if_missing curl
install_if_missing unzip

# ===== INSTALL PROCESS =====
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

echo "⬇️ Downloading Medgent..."
curl -L -o medgent.zip "$ZIP_URL"

echo "📂 Extracting..."
unzip -o medgent.zip

rm medgent.zip

# ===== COOL CLI EFFECT =====
echo "✨ Finalizing..."
sleep 1
echo "⚡ Almost ready..."
sleep 1

# ===== DONE =====
echo "✅ Medgent installed successfully!"
echo "📁 Location: $INSTALL_DIR"
echo "👉 Run: cd $INSTALL_DIR"

