confirm() {
    # call with a prompt string or use a default
    read -r -p "${1:-Are you sure? [y/N]} " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

confirm "Would you like to install optional components? [y/N] " || exit 0;
echo "Installing blender, discord, league of legends, slack, spotify, viber, vlc..."

brew cask install blender
brew cask install discord
brew cask install league-of-legends
brew cask install slack
brew cask install spotify
brew cask install viber
brew cask install vlc
