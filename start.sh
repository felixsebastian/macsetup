# make code dir
mkdir -p $HOME/Code

# copy files
cp -r ./payloads/bin $HOME/Code
cp -r ./payloads/env $HOME/Code
cp ./payloads/zshrc $HOME/.zshrc

# intstall homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install homebrew packages
brew install gh

# setup gh cli
gh auth login
