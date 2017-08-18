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

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmuxconfig ~/.tmux.conf
ln -s ~/dotfiles/sshconfig ~/.ssh/config

ln -s ~/dotfiles/aliases.zsh ~/.zsh/aliases.zsh
ln -s ~/dotfiles/bindings.zsh ~/.zsh/bindings.zsh
ln -s ~/dotfiles/colors.zsh ~/.zsh/colors.zsh
ln -s ~/dotfiles/completion.zsh ~/.zsh/completion.zsh
ln -s ~/dotfiles/config.zsh ~/.zsh/config.zsh
ln -s ~/dotfiles/functions.zsh ~/.zsh/functions.zsh
ln -s ~/dotfiles/prompt.zsh ~/.zsh/prompt.zsh

#rm -fv ~/.zprofile
#ln ~/dotfiles/zprofile ~/.zprofile
