# make code dir
mkdir -p $HOME/Code

# copy files
cp -r ./payloads/bin $HOME/Code
cp -r ./payloads/env $HOME/Code
cp ./payloads/zshrc $HOME/.zshrc
cp ./payloads/gitconfig $HOME/.gitconfig

# intstall homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install homebrew packages
brew install go-task/tap/go-task
brew install gh go-task node@20

# setup gh cli
gh auth login
