#!/bin/zsh

SCRIPT_DIR=$(dirname "$0")

# make code dir
mkdir -p $HOME/Code

# copy files
cp -r $SCRIPT_DIR $HOME/Code/macsetup
cp $SCRIPT_DIR/payloads/zshrc $HOME/.zshrc
source $HOME/.zshrc
cp $SCRIPT_DIR/payloads/gitconfig $HOME/.gitconfig

# intstall homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install homebrew packages
brew install go-task/tap/go-task
brew install gh go-task node@20
brew install python

# install poetry
python -m venv $HOME/Code/poetry
$HOME/Code/poetry/bin/pip install -U pip setuptools
$HOME/Code/poetry/bin/pip install poetry

# setup gh cli
gh auth login
