#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install Python
brew install python
brew install python3

# Install ruby-build and rbenv
# brew install ruby-build
# brew install rbenv
# LINE='eval "$(rbenv init -)"'
# grep -q "$LINE" ~/.extra || echo "$LINE" >> ~/.extra

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install other useful binaries.
brew install ack
brew install dark-mode
# brew install exiv2
# brew install git
# brew install git-lfs
# brew install git-flow
# brew install git-extras
# brew install hub
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rhino
# brew install speedtest_cli
# brew install ssh-copy-id
brew install tree
# brew install webkit2png
# brew install zopfli
# brew install pkg-config libffi
# brew install pandoc

# Core casks
brew cask install --appdir="~/Applications" iterm2
# brew cask install --appdir="~/Applications" java
# brew cask install --appdir="~/Applications" xquartz

# Development tool casks
brew cask install --appdir="/Applications" sublime-text
# brew cask install --appdir="/Applications" atom
# brew cask install --appdir="/Applications" virtualbox
# brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" macdown

# Misc casks
brew cask install --appdir="/Applications" google-chrome
# brew cask install --appdir="/Applications" firefox
# brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slack
# brew cask install --appdir="/Applications" dropbox
# brew cask install --appdir="/Applications" evernote
brew cask install --appdir="/Applications" 1password
#brew cask install --appdir="/Applications" gimp
#brew cask install --appdir="/Applications" inkscape

#Remove comment to install LaTeX distribution MacTeX
#brew cask install --appdir="/Applications" mactex

# Install Docker, which requires virtualbox
# brew install docker
# brew install boot2docker

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
brew cleanup
