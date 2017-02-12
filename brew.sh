#!/usr/bin/env bash

# install brew / brew-cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

#brew update/upgrade
brew update
brew upgrade

# basic brew install lang/tools
brew install node
brew install git


#GUI for OSX
# search from cask: https://caskroom.github.io/search
brew cask install firefox google-chrome
brew cask install docker iterm2 sublime-text3
brew cask install sip spectacle alfred dash flux mou vlc spotify

