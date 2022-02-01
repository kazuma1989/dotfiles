#!/usr/bin/env zsh

git clone https://github.com/kazuma1989/dotfiles.git ~/dotfiles

xcode-select --install # a homebrew dependency
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --file ~/dotfiles/Brewfile
