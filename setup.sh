#!/usr/bin/env bash

# Install Xcode Command Line Tools (brew requirement)
# xcode-select --install

# Make sure signed into AppStore
while true; do
  read -p "Did you sign in to AppStore and git clone dotfiles? " y
  case $y in
    [yY]* ) break;;
    * ) exit;;
  esac
done

# Ask for administrator password just in case and keep alive
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

# Symlink dotfiles
ln -s ~/Documents/dev/dotfiles/gemrc ~/.gemrc
ln -s ~/Documents/dev/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Documents/dev/dotfiles/gitignore_global ~/.gitignore_global
ln -s ~/Documents/dev/dotfiles/zshrc ~/.zshrc
# ln -s ~/Documents/dev/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

ln -s ~/Documents/dev/dotfiles/config.cson ~/.atom/config.cson

###############################################################################

# Install homebrew if not already installed
if test ! $(which brew); then
    echo "Installing homebrew!"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install everything specified in Brewfile in same directory
brew bundle

brew cleanup

###############################################################################

#### Dock
# Size
defaults write com.apple.dock tilesize -int 36
# Position on screen (Right)
defaults write com.apple.dock orientation -string "right"
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

#### Security & Privacy
sudo spctl --master-disable

#### Extras (Hidden settings that are not in System Preferences gui kept seperately)
# Remove animation and delay from autohide dock
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
# Removes all icons from dock (useful after fresh install)
defaults write com.apple.dock persistent-apps -array

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Documents/dev/dotfiles/"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

###############################################################################

defaults write com.apple.dock ResetLaunchPad -bool true
killall Dock; killall SystemUIServer

echo "All done!"
