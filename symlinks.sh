#!/bin/bash

TMUX_CONF_PATH="$HOME/dotfiles/.tmux.conf"
ZSH_PATH="$HOME/dotfiles/zsh/.zshrc"
KITTY_PATH="$HOME/dotfiles/kitty.conf"
NVIM_PATH="$HOME/dotfiles/nvim"

ln -sf $TMUX_CONF_PATH ~/
ln -sf $NVIM_PATH ~/.config
ln -sf $ZSH_PATH ~/
ln -sf $KITTY_PATH ~/.config/kitty/

echo "Symlink Completed"
