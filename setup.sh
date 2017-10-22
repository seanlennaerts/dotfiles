#!/usr/bin/env bash

# Make sure signed into AppStore
while true; do
  read -p "Did you sign in to AppStore? [y] " yn
  case $yn in
    [yY]* ) break;;
    * ) exit;;
  esac
done

# Ask for administrator password just in case and keep alive
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Xcode Command Line Tools (brew requirement)
xcode-select --install

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

#### General
# Use dark menu bar and Dock
# Highlight color (Yellow)
# Sidebar icon size (Small)
# Ask to keep changes when closing documents (checked)
# Close windows when quitting an app (checked)
# Recent items (None)

#### Desktop & Screen Saver
# Start after (Never)

#### Dock
# Size
defaults write com.apple.dock tilesize -int 36
# Position on screen (Right)
defaults write com.apple.dock orientation -string "right"
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

#### Mission Control

#### Security & Privacy
sudo spctl --master-disable

#### Spotlight

#### Keyboard

#### Trackpad

#### Sound

#### iCloud

#### Users & Groups
# Turn off Guest
# Automatic login (Sean Lennaerts)

#### App Store
# Automatically check for updates

#### Date & Time
# Show the day of the week
# Show date

#### Accessibility
# Reduce transparency
# Use scroll gesture with modifier keys to zoom (Command)
# Zoom: Continuously with pointer (checked)

#### Extras (Hidden settings that are not in System Preferences gui kept seperately)
# Remove animation and delay from autohide dock
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
# Removes all icons from dock (useful after fresh install)
defaults write com.apple.dock persistent-apps -array

###############################################################################

defaults write com.apple.dock ResetLaunchPad -bool true
killall Dock
killall Finder
echo "All done!"
say -v "Samantha" "All done!"