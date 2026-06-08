#!/bin/bash

GIT_NAME="Julio Filizzola"
GIT_EMAIL="juliofilizzola@hotmail.com"
GHOSTTY_CONFIG_DIR="$HOME/.config/ghostty"
GHOSTTY_CONFIG_FILE="$GHOSTTY_CONFIG_DIR/config"
gitCommitTemplateFile="$HOME/.gitmessage"

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

cat << 'EOF' > "$gitCommitTemplateFile"
You are a commit message generator.

Analyze the staged changes and generate a commit message following the Conventional Commits specification.

Structure:
- Line 1: commit type + short description
- Blank line
- Line 3: "details:" followed by a concise summary of what was changed

Rules:
- Allowed types: feat, fix, docs, style, refactor, perf, test, chore, build, ci.
- Choose the most appropriate type based on the changes.
- Use the imperative form in English (e.g. add, fix, update, remove).
- Be concise and objective.
- Avoid overly verbose descriptions or unnecessary details.
- Do NOT include emojis.
- Do NOT include file names unless strictly necessary.
- Details should mention key functions, logic, or behaviors that were modified.
- Do NOT exceed 3 bullet points in details.
- Output only the commit message.

Format example:
fix: correct bank account validation

details:
- adjust validation logic in validateBankAccount
- handle empty account number scenario
EOF

git config --global commit.template "$gitCommitTemplateFile"
