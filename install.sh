!#/bin/bash

ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/alacritty ~/.config/alacritty
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

sudo pacman -S git zsh neovim tmux alacritty docker docker-compose -y
