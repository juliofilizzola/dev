#!/bin/bash

GIT_NAME="Julio Filizzola"
GIT_EMAIL="juliofilizzola@hotmail.com"
GHOSTTY_CONFIG_DIR="$HOME/.config/ghostty"
GHOSTTY_CONFIG_FILE="$GHOSTTY_CONFIG_DIR/config"

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew update

brew install git
brew install --cask visual-studio-code
brew install --cask ghostty
brew install --cask docker
brew install --cask discord
brew install --cask jetbrains-toolbox

git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global init.defaultBranch main
git config --global core.editor "code --wait"

mkdir -p "$GHOSTTY_CONFIG_DIR"

cat << 'EOF' > "$GHOSTTY_CONFIG_FILE"
theme = dark
font-size = 13
font-family = "JetBrains Mono"
background-opacity = 0.95
cursor-style = block
EOF
