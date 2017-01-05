#!/bin/bash

rm -fv ~/.zsh/aliases.zsh
rm -fv ~/.zsh/bindings.zsh
rm -fv ~/.zsh/colors.zsh
rm -fv ~/.zsh/completion.zsh
rm -fv ~/.zsh/config.zsh
rm -fv ~/.zsh/functions.zsh
rm -fv ~/.zsh/prompt.zsh

rm -fv ~/.vimrc
rm -fv ~/.zshrc
rm -fv ~/.tmux.conf
rm -fv ~/.ssh/config

ln -s vimrc ~/.vimrc
ln -s zshrc ~/.zshrc
ln -s tmuxconfig ~/.tmux.conf
ln -s sshconfig ~/.ssh/config

ln -s aliases.zsh ~/.zsh/aliases.zsh
ln -s bindings.zsh ~/.zsh/bindings.zsh
ln -s colors.zsh ~/.zsh/colors.zsh
ln -s completion.zsh ~/.zsh/completion.zsh
ln -s config.zsh ~/.zsh/config.zsh
ln -s functions.zsh ~/.zsh/functions.zsh
ln -s prompt.zsh ~/.zsh/prompt.zsh
