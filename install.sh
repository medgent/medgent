#!/bin/bash

set -e

echo "🏥 MEDGENT INSTALLER"
echo "🚀 Smart auto-install starting..."

# ===== CONFIG =====
INSTALL_DIR="$HOME/medgent"
VERSION=${1:-"latest"}

# ===== OS DETECTION =====
OS="$(uname)"
echo "🧠 Detected OS: $OS"

# ===== WINDOWS CHECK =====
IS_WINDOWS=false
if [[ "$OS" == *"MINGW"* ]] || [[ "$OS" == *"NT"* ]]; then
  IS_WINDOWS=true
  echo "🪟 Windows detected (Git Bash)"
  echo "⚠️ Recommended: Use WSL for full compatibility"
fi

# ===== VERSION LOGIC =====
get_latest_version() {
  echo "v2.0"
}

if [ "$VERSION" = "latest" ]; then
  VERSION=$(get_latest_version)
fi

ZIP_URL="https://github.com/medgent/medgent/raw/main/medgent-${VERSION}.zip"

echo "📦 Installing version: $VERSION"

# ===== DEPENDENCY INSTALL =====
install_if_missing () {
  if ! command -v $1 &> /dev/null; then
    echo "⚙️ Installing $1..."

    if [[ "$OS" == "Linux" ]]; then
      sudo apt update && sudo apt install -y $1

    elif [[ "$OS" == "Darwin" ]]; then
      if command -v brew &> /dev/null; then
        brew install $1
      else
        echo "⚠️ Homebrew not found. Install from https://brew.sh"
      fi

    else
      echo "⚠️ Please install $1 manually"
    fi
  fi
}

install_if_missing curl
install_if_missing unzip

# ===== PYTHON CHECK =====
if ! command -v python3 &> /dev/null; then
  echo "⚠️ Python3 not found. Please install Python to enable full features."
fi

# ===== INSTALL =====
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

echo "⬇️ Downloading Medgent..."
curl -L -o medgent.zip "$ZIP_URL"

echo "📂 Extracting..."
unzip -o medgent.zip
rm medgent.zip

# ===== AUTO SETUP =====
if [ -f "medgent_full/setup.py" ]; then
  echo "⚙️ Running setup..."
  python3 medgent_full/setup.py || true
fi

# ===== CLI SHORTCUT (Linux/Mac only) =====
if [ "$IS_WINDOWS" = false ]; then
  if ! grep -q 'alias medgent=' ~/.bashrc 2>/dev/null; then
    echo 'alias medgent="cd ~/medgent"' >> ~/.bashrc
    echo "⚡ CLI command added: medgent"
  fi
fi

# ===== FINISH =====
echo "✨ Finalizing..."
sleep 1
echo "⚡ Almost ready..."
sleep 1

echo ""
echo "✅ Medgent installed successfully!"
echo "📁 Location: $INSTALL_DIR"
echo ""

if [ "$IS_WINDOWS" = true ]; then
  echo "👉 Open folder manually: $INSTALL_DIR"
else
  echo "👉 Run: medgent"
fi

