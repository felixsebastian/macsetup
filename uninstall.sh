#!/bin/bash

rm -rf $HOME/Code
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
source ~/.oh-my-zsh/tools/uninstall.sh
rm $HOME/.gitconfig
rm $HOME/.zshrc
