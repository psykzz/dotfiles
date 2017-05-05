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
echo "Installing Slack, discord and spotify"

brew cask install slack
brew cask install discord
brew cask install spotify
