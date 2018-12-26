#!/bin/bash
set -eo pipefail

zsh_plugins_path="$HOME/.oh-my-zsh/custom/plugins"

# SpeedRead oh-my-zsh plugin.
rm -rf "$zsh_plugins_path/speedread"
git clone git@github.com:pasky/speedread.git "$zsh_plugins_path/speedread"

# AutoSuggestions oh-my-zsh plugin.
rm -rf "$zsh_plugins_path/zsh-autosuggestions"
git clone git@github.com:zsh-users/zsh-autosuggestions.git "$zsh_plugins_path/zsh-autosuggestions"

# Fastlane.
sudo gem install fastlane

# Travis.
sudo gem install travis

# Clean up.
sudo gem cleanup

# Vim syntax highlighting.
rm -rf "$HOME/.vim/pack/default/start/vim-polyglot"
mkdir -p "$HOME/.vim/pack/default/start/"
git clone https://github.com/sheerun/vim-polyglot "$HOME/.vim/pack/default/start/vim-polyglot"
