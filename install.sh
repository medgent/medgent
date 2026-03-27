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

      echo "⚠️ Restarting shell required for Python to work"
      echo "👉 Please run the command again after restart"
      exit 1
    else
      echo "⚠️ Unsupported OS. Install Python manually."
      exit 1
    fi

    PYTHON=python3
  fi
}

install_python
