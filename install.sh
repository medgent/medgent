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

# ===== VERSION LOGIC =====
get_latest_version() {
  echo "v2.0"
}

if [ "$VERSION" = "latest" ]; then
  VERSION=$(get_latest_version)
fi

ZIP_URL="https://github.com/medgent/medgent/raw/main/medgent-${VERSION}.zip"

echo "📦 Installing version: $VERSION"

# ===== DEPENDENCIES =====
install_if_missing () {
  if ! command -v $1 &> /dev/null; then
    echo "⚙️ Installing $1..."

    if [[ "$OS" == "Linux" ]]; then
      sudo apt update && sudo apt install -y $1

    elif [[ "$OS" == "Darwin" ]]; then
      brew install $1

    elif [[ "$OS" == *"MINGW"* || "$OS" == *"MSYS"* ]]; then
      echo "⚠️ Please install $1 manually on Windows"
    fi
  fi
}

install_if_missing curl
install_if_missing unzip

# ===== PYTHON AUTO INSTALL =====
install_python() {
  if command -v python3 &> /dev/null; then
    echo "✅ Python3 found"
    PYTHON=python3

  elif command -v python &> /dev/null; then
    echo "✅ Python found"
    PYTHON=python

  else
    echo "❌ Python not found. Installing..."

    if [[ "$OS" == "Linux" ]]; then
      sudo apt update && sudo apt install -y python3 python3-pip

    elif [[ "$OS" == "Darwin" ]]; then
      brew install python

    elif [[ "$OS" == *"MINGW"* || "$OS" == *"MSYS"* ]]; then
      echo "🪟 Installing Python via winget..."

      powershell.exe -Command "winget install -e --id Python.Python.3 --silent"

      echo ""
      echo "⚠️ Restart terminal required (Windows PATH update)"
      echo "👉 Then run again:"
      echo "curl -fsSL https://get.medgent.in | bash"
      exit 1

    else
      echo "⚠️ Unsupported OS. Install Python manually."
      exit 1
    fi

    PYTHON=python3
  fi
}

install_python

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
  $PYTHON medgent_full/setup.py || true
fi

# ===== CLI SHORTCUT =====
echo 'alias medgent="cd ~/medgent"' >> ~/.bashrc 2>/dev/null || true

# ===== FINISH =====
echo ""
echo "✨ Finalizing..."
sleep 1
echo "⚡ Almost ready..."
sleep 1

echo ""
echo "✅ Medgent installed successfully!"
echo "📁 Location: $INSTALL_DIR"
echo "👉 Type: medgent"
