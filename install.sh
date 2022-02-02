#!/usr/bin/env zsh

# Dependency of Git and Homebrew
xcode-select --install

# Clone
git clone https://github.com/kazuma1989/dotfiles.git ~/.dotfiles

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle --file ~/.dotfiles/Brewfile

# Backup. Rename xxx -> xxx.orig if it exists.
mv ~/.config{,.orig}
ln -s ~/.dotfiles/.config ~/.config

mv ~/.gitconfig{,.orig}
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

mv ~/.vimrc{,.orig}
ln -s ~/.dotfiles/.vimrc ~/.vimrc

mv ~/.zshenv{,.orig}
ln -s ~/.dotfiles/.zshenv ~/.zshenv

mv ~/.zshrc{,.orig}
ln -s ~/.dotfiles/.zshrc ~/.zshrc

mv ~/Library/Application\ Support/BetterSnapTool/storedata{,.orig}
ln -s ~/.dotfiles/Library/Application\ Support/BetterSnapTool/storedata ~/Library/Application\ Support/BetterSnapTool/storedata
mv ~/Library/Preferences/com.hegenberg.BetterSnapTool.plist{,.orig}
ln -s ~/.dotfiles/Library/Preferences/com.hegenberg.BetterSnapTool.plist ~/Library/Preferences/com.hegenberg.BetterSnapTool.plist

# SSH
ssh-keygen -t ed25519 -C "kazuma.ebina@quipper.com"
ssh-add ~/.ssh/id_ed25519
