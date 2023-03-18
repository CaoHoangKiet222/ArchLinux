#!/bin/bash

ZSHDIR="$HOME/.config/zsh"
COLDIR="$HOME/.config/colorls"
ADIR="$HOME/.config/alacritty"
NDIR_PACKER="$HOME/.config/nvim.packer/lua/dogboy"
NDIR_LAZY="$HOME/.config/nvim/lua/dogboy/config"

zsh_alpha_changes() {
  sed -i "s/dashboard.section.footer.opts.hl = .*/dashboard.section.footer.opts.hl = \"$1\"/" $NDIR_LAZY/alpha.lua
  sed -i "s/dashboard.section.header.opts.hl = .*/dashboard.section.header.opts.hl = \"$2\"/" $NDIR_LAZY/alpha.lua
  sed -i "s/dashboard.section.buttons.opts.hl = .*/dashboard.section.buttons.opts.hl = \"$3\"/" $NDIR_LAZY/alpha.lua
}

function zsh_changes() {
  if [ $1 == "gruvbox" ]
  then
    # replacing colorls dir and zsh-prompt
    sed -i "s/dir: .*/dir: '#fabd2f'/" $COLDIR/dark_colors.yaml
    sed -i '36 s/blue/yellow/g' $ZSHDIR/zsh-prompt
    # replacing colors in alacritty
    sed -i 's/colors: .*/colors: *gruvbox/g' $ADIR/alacritty.yml
    # replacing theme in neovim
    sed -i '0,/colorscheme .*/s//colorscheme gruvbox/' $NDIR_PACKER/colorscheme.lua
    sed -i 's/colorscheme .*/colorscheme monokai-pro/g' $NDIR_LAZY/lualine.lua
    zsh_alpha_changes "AlphaFooter" "AlphaHeader" "AlphaButton"
  elif [ $1 == "dracula" ]
  then
    # replacing colorls dir and zsh-prompt
    sed -i 's/dir: .*/dir: violet/' $COLDIR/dark_colors.yaml
    sed -i '36 s/yellow/blue/g' $ZSHDIR/zsh-prompt
    # replacing colors in alacritty
    sed -i 's/colors: .*/colors: *dracula/g' $ADIR/alacritty.yml
    # replacing theme in neovim
    sed -i '0,/colorscheme .*/s//colorscheme dracula/' $NDIR_PACKER/colorscheme.lua
    sed -i 's/colorscheme .*/colorscheme dracula/g' $NDIR_LAZY/lualine.lua
    zsh_alpha_changes "Type" "Include" "Keyword"
  elif [ $1 == "tokyo-night" ]
  then
    # replacing colorls dir and zsh-prompt
    sed -i "s/dir: .*/dir: '#A9B1D6'/" $COLDIR/dark_colors.yaml
    sed -i '36 s/yellow/blue/g' $ZSHDIR/zsh-prompt
    # replacing colors in alacritty
    sed -i 's/colors: .*/colors: *tokyo-night/g' $ADIR/alacritty.yml
    # replacing theme in neovim
    sed -i '0,/colorscheme .*/s//colorscheme tokyonight/' $NDIR_PACKER/colorscheme.lua
    sed -i 's/colorscheme .*/colorscheme tokyonight/g' $NDIR_LAZY/lualine.lua
    zsh_alpha_changes "Type" "Include" "Keyword"
  fi
  i3-msg reload
}
