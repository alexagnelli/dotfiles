#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for file in vimrc zshrc tmux.conf; do
	ln -s "${BASEDIR}/$file" ~/.$file
done

ln -s "${BASEDIR}/vscode/keybindings.json" ~/.config/Code/User/keybindings.json

git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
