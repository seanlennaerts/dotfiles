#!/usr/bin/env bash

# Make sure signed into AppStore
while true; do
  read -p "Did you sign in to AppStore? [y] " yn
  case $yn in
    [yY]* ) break;;
    * ) exit;;
  esac
done

# Close System Preferences if open
osascript -e 'tell application "System Preferences" to quit'

# Ask for administrator password just in case and keep alive
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "First installing brew and applications (part 1 of 3)"
# Install Xcode Command Line Tools (brew requirement)
xcode-select --install

# Install homebrew
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install packages
echo "Installing packages with brew..."
# PACKAGES=(
#   mas
#   node
#   python
# )
# brew install ${PACKAGES[@]}
brew install mas
brew install node
brew install python

# Clean up after installing packages
echo "Cleaning up..."
brew cleanup

# Install cask to install applications
# echo "Installing cask"
# brew tap caskroom/cask

# Install applications with cask
# echo "Installing applications with cask..."
# CASKS=(
#   adobe-acrobat-reader
#   atom
#   dropbox
#   flux
#   franz
#   google-chrome
#   iterm2
#   microsoft-office
#   moom
#   skype
#   sublime-text
#   transmission
#   trim-enabler
#   vlc
#   xquartz
# )
# brew cask install ${CASKS[@]}

brew bundle

# Install AppStore applications with mas
echo "Installing AppStore applications with mas..."
APPLICATIONS=(
  402989379 # iStudiez Pro
  425424353 # The Unarchiver
  497799835 # Xcode
  937984704 # Amphetamine
)
mas install ${APPLICATIONS[@]}

###############################################################################
echo "Now configuring applications (part 2 of 3)"

# Launch sublime from command line
# ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl


###############################################################################
echo "Now configuring macOS System Preferences (part 3 of 3)"

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
# Automatic login

#### App Store
# Automatically check for updates

#### Date & Time
# Show the day of the week
# Show date

#### Accessibility
# Reduce transparency
# Use scroll gesture with modifier keys to zoom (Command)
# Continuously with pointer (checked)

#### Extras (Hidden settings that are not in System Preferences gui kept seperately)
# Remove animation and delay from autohide dock
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
# Removes all icons from dock
defaults write com.apple.dock persistent-apps -array

###############################################################################

# Finish
defaults write com.apple.dock ResetLaunchPad -bool true
killall Dock
killall Finder
echo "All done!"
say -v "Samantha" "All done!"
