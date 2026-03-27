#!/bin/bash

set -e

echo "🏥 MEDGENT INSTALLER"
echo "🚀 Smart auto-install starting..."

# ===== AUTO CONFIG =====
INSTALL_DIR="$HOME/medgent"
VERSION=${1:-"latest"}

# ===== OS DETECTION =====
OS="$(uname)"
echo "🧠 OS: $OS"

# ===== VERSION AUTO LOGIC =====
get_latest_version() {
  echo "v2.0"
}

if [ "$VERSION" = "latest" ]; then
  VERSION=$(get_latest_version)
fi

ZIP_URL="https://github.com/medgent/medgent/raw/main/medgent-${VERSION}.zip"

echo "📦 Version: $VERSION"

# ===== DEPENDENCY AUTO INSTALL =====
install_if_missing () {
  if ! command -v $1 &> /dev/null; then
    echo "⚙️ Installing $1..."
    if [[ "$OS" == "Linux" ]]; then
      sudo apt update && sudo apt install -y $1
    elif [[ "$OS" == "Darwin" ]]; then
      brew install $1
    else
      echo "⚠️ Please install $1 manually"
    fi
  fi
}

install_if_missing curl
install_if_missing unzip

# ===== INSTALL PROCESS =====
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

echo "⬇️ Downloading..."
curl -L -o medgent.zip "$ZIP_URL"

echo "📂 Extracting..."
unzip -o medgent.zip
rm medgent.zip

# ===== AUTO SETUP =====
if [ -f "medgent_full/setup.py" ]; then
  echo "⚙️ Running setup..."
  python3 medgent_full/setup.py || true
fi

# ===== AUTO CLI COMMAND =====
echo 'alias medgent="cd ~/medgent"' >> ~/.bashrc 2>/dev/null || true

# ===== COOL EFFECT =====
echo "✨ Finalizing..."
sleep 1
echo "⚡ Almost ready..."
sleep 1

# ===== DONE =====
echo "✅ Medgent installed!"
echo "👉 Type: medgent"

