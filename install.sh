#!/bin/bash

# Abort on error
set -e

echo "🔧 Installing SketchyBar and dependencies..."

# 1. Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
  echo "🚀 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2. Install SketchyBar
brew tap FelixKratz/formulae
brew install sketchybar

# 3. Install dependencies
brew install osx-cpu-temp powermetrics
brew install --cask shottr

# 4. Install Nerd Font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# 5. Clone config
if [ -d "$HOME/.config/sketchybar" ]; then
  echo "⚠️ Config already exists at ~/.config/sketchybar. Skipping clone."
else
  git clone https://github.com/ajsanna/sketchybar.git ~/.config/sketchybar
fi

# 6. Make scripts executable
chmod +x ~/.config/sketchybar/plugins/*.sh
chmod +x ~/.config/sketchybar/items/*.sh

# 7. Start SketchyBar
brew services start sketchybar

echo "✅ Setup complete! SketchyBar is now running."
