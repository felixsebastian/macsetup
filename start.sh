#!/bin/zsh

set -e

SCRIPT_DIR=$(dirname "$0")

# make code dir
mkdir -p $HOME/Code

# intstall homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
path+=/opt/homebrew/bin

# install oh my zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh

# install homebrew packages
brew install go-task/tap/go-task
brew install gh go-task node@20
brew install python

# setup gh cli
gh auth login

# copy files
gh repo clone felixsebastian/macsetup $HOME/Code
cp $HOME/Code/macsetup/payloads/gitconfig $HOME/.gitconfig
cp $HOME/Code/macsetup/payloads/zshrc $HOME/.zshrc

# install poetry
python -m venv $HOME/Code/poetry
$HOME/Code/poetry/bin/pip install -U pip setuptools
$HOME/Code/poetry/bin/pip install poetry

source $HOME/.zshrc
