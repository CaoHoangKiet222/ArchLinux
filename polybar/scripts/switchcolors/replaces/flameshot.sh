#!/bin/bash

# replacing color flameshot
function flameshot_changes() {
  if [ $1 == "gruvbox" ]
  then
    flameshot config -m "#fabd2f"
  elif [ $1 == "dracula" ]
  then
    flameshot config -m violet
  fi
}
