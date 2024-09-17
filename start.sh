#!/bin/zsh

SCRIPT_DIR=$(dirname "$0")

# make code dir
mkdir -p $HOME/Code

# setup gh cli
gh auth login

# copy files
cp $SCRIPT_DIR/payloads/gitconfig $HOME/.gitconfig
cp $SCRIPT_DIR/payloads/zshrc $HOME/.zshrc
gh repo clone felixsebastian/macsetup $HOME/Code
source $HOME/.zshrc

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
