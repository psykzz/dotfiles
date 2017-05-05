xcode-select --install

# Install homebrew and my common packages
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask # Install brew cask
brew install python python3 nvm git zsh awscli rbenv 

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "If you get a password error, run the following :: sudo chsh -s /bin/zsh $(whoami)"

# Get oh-my-zsh theme, aliases, and profile
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/oh-my-zsh/themes/psykzz.zsh-theme > ~/.oh-my-zsh/themes/psykzz.zsh-theme
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/dot.aliases > ~/.aliases
echo "export ZSH=$(echo ~)/.oh-my-zsh" > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/dot.zshrc >> ~/.zshrc

# Install and use the latest node
export NVM_DIR="$(echo ~)/.nvm"
source $(brew --prefix nvm)/nvm.sh
nvm install --lts

# Install iterm2
brew cask install iterm2

# Install Chrome
brew cask install google-chrome

# Install java
brew cask install java

# Install docker
brew cask install docker

# Install Atom
brew cask install atom

# Optional
sh -c "$(curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/optional.sh)"

echo "Time to restart your terminal!"
