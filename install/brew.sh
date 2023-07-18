# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install more recent versions of some OS X tools.
brew install vim
brew install bash-completion2

# Install cmake for YouCompleteMe
brew install cmake

# Install other userful binaries
brew install autojump
brew install git
brew install wget
brew install ack
brew install dark-mode
brew install tree
brew install tmux

# Install diff-so-fancy
brew install diff-so-fancy

# Remove outdated versions from the cellar.
brew cleanup
