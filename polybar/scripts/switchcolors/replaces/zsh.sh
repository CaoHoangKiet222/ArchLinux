#!/bin/bash

ZSHDIR="$HOME/.config/zsh"
COLDIR="$HOME/.config/colorls"
ADIR="$HOME/.config/alacritty"
NDIR="$HOME/.config/nvim/lua/dogboy"

function zsh_changes() {
  if [ $1 == "gruvbox" ]
  then
    # replacing colorls dir and zsh-prompt
    sed -i "s/dir: .*/dir: '#fabd2f'/" $COLDIR/dark_colors.yaml
    sed -i '36 s/blue/yellow/g' $ZSHDIR/zsh-prompt
    # replacing colors in alacritty
    sed -i 's/colors: .*/colors: *gruvbox/g' $ADIR/alacritty.yml
    # replacing theme in neovim
    sed -i '0,/colorscheme .*/s//colorscheme gruvbox/' $NDIR/colorscheme.lua
  elif [ $1 == "dracula" ]
  then
    # replacing colorls dir and zsh-prompt
    sed -i 's/dir: .*/dir: violet/' $COLDIR/dark_colors.yaml
    sed -i '36 s/yellow/blue/g' $ZSHDIR/zsh-prompt
    # replacing colors in alacritty
    sed -i 's/colors: .*/colors: *dracula/g' $ADIR/alacritty.yml
    # replacing theme in neovim
    sed -i '0,/colorscheme .*/s//colorscheme dracula/' $NDIR/colorscheme.lua
  fi
  i3-msg reload
}
