xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask # Install brew cask
brew install python python3 nvm git zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "If you get a password error, run the following :: sudo chsh -s /bin/zsh $(whoami)"

# Get oh-my-zsh theme, aliases, and profile
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/oh-my-zsh/themes/psykzz.zsh-theme > ~/.oh-my-zsh/themes/psykzz.zsh-theme
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/dot.aliases > ~/.aliases
echo "export ZSH=$(echo ~)/.oh-my-zsh" > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/dot.zshrc >> ~/.zshrc

# install and use the latest node
export NVM_DIR="$(echo ~)/.nvm"
source $(brew --prefix nvm)/nvm.sh
nvm install --lts

# Install java
brew cask install java

# Install docker
brew cask install docker

# Install Atom
brew cask install atom


echo "Time to restart your terminal"
