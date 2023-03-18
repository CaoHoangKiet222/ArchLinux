#!/bin/bash
VSCODE_DIR=$HOME/.config/Code/User

# replacing xprofile
function vscode_changes() {
  if [ $1 == "gruvbox" ]
  then
    sed -i 's/workbench.colorTheme.*/workbench.colorTheme\": \"Gruvbox Dark Medium\"/g' $VSCODE_DIR/settings.json
  elif [ $1 == "dracula" ]
  then
    sed -i 's/workbench.colorTheme.*/workbench.colorTheme\": \"Dracula\"/g' $VSCODE_DIR/settings.json
  elif [ $1 == "tokyo-night" ]
  then
    sed -i 's/workbench.colorTheme.*/workbench.colorTheme\": \"Tokyo Night\"/g' $VSCODE_DIR/settings.json
  fi
}
