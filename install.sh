xcode-select --install

# Install homebrew and my common packages
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask # Install brew cask

brew install python python3 git zsh awscli rbenv fd terraform_landscape

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "If you get a password error, run the following :: sudo chsh -s /bin/zsh $(whoami)"

# Get oh-my-zsh theme, aliases, and profile
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/oh-my-zsh/themes/psykzz.zsh-theme > ~/.oh-my-zsh/themes/psykzz.zsh-theme
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/dot.aliases > ~/.aliases
echo "export ZSH=$(echo ~)/.oh-my-zsh" > ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/dot.zshrc >> ~/.zshrc

# Setup global git config
curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/dot.gitignore >> ~/.gitignore
git config --global --unset core.excludesfile && git config --global --add core.excludesfile ~/.gitignore

# Install and use the latest node
git clone https://github.com/creationix/nvm.git .nvm
export NVM_DIR="$(echo ~)/.nvm"
source ~/.nvm/nvm.sh
nvm install --lts

brew cask install bitbar
brew cask install docker
brew cask install github
brew cask install google-chrome
brew cask install iterm2
brew cask install java
brew cask install p4v
brew cask install ngrok
brew cask install visual-studio-code
brew cask install vagrant

# Optional
sh -c "$(curl -fsSL https://raw.githubusercontent.com/psykzz/dotfiles/master/optional.sh)"

echo "Time to restart your terminal!"
