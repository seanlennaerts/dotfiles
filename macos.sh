#!/usr/bin/env bash

#### General
# Highlight color (Yellow)
defaults write NSGlobalDomain AppleHighlightColor -string "1.000000 0.937255 0.690196"

# Use dark menu bar and Dock
defaults write NSGlobalDomain AppleInterfaceStyle Dark;
# Sidebar icon size (Small)
NSTableViewDefaultSizeMode = 1;

#### Desktop & Screen Saver
# Start after (Never) - ?

#### Dock
# Animate opening applications (uncheck)
launchanim = 0;
# Minimize windows using (Scale effect)
mineffect = scale;

#### Mission Control
# Automatically rearrange Spaces based on most recen use (uncheck)
mru-spaces = 0;
# Hot Corner top-right puts display to sleep
"wvous-tr-corner" = 10;
"wvous-tr-modifier" = 0;

#### Launguage & Region
# Nothing to change

#### Security & Privacy
# Require password (immediately) - ?

#### Spotlight

#### Notifications
# Nothing to change

#### Display
# Nothing to change

#### Energy Saver
# Nothing to change
# Maybe put hard disks to sleep when possible??

#### Keyboard
# Key Repeat (Fast)
KeyRepeat = 2;
# Delay Until Repeat (Short)
InitialKeyRepeat = 15;
# Shortcuts (uncheck move left/right a space) - ?

#### Mouse
# Nothing to change

#### Trackpad
# Secondary click bottom right corner
see diff
# Enable tap to click
see diff
# Make tracking speed a little faster
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 1
# Disable natural scroll
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

#### Printers & Scanners
# Nothing to change

#### Sound
# Nothing to change

#### Startup Disk
# Nothing to change

#### iCloud
# Nothing to change

#### Internet Accounts
# Nothing to change

#### App Store
# Install app updates (check)
# Install macOS updates (check)
# Free Downloads (Save Password)

#### Network
# Nothing to change

#### Bluetooth
# Turn off bluetooth

#### Extensions
# Nothing to change

#### Sharing
# Nothing to change

#### Users & Groups
# Remove iTunes helper
# Automatic login (Sean Lennaerts)

#### Parental Controls
# Nothing to change

#### Siri
# Nothing to change

#### Date & Time
# Show date in menu bar
"com.apple.menuextra.clock" =     {
         DateFormat = "EEE MMM d  h:mm a";
         FlashDateSeparators = 0;
         IsAnalog = 0;
     };

#### Time Machine
# Nothing to change

#### Accessibility
# Nothing to change

#### Desktop icons
# Sort by (Date Added)
arrangeBy = dateAdded;
# Icon size 32x32
iconSize = 32;
# Label position (right)
labelOnBottom = 0;
# Text size (11)
textSize = 11;


#### Menu bar
# Show battery percentage
"com.apple.menuextra.battery" =     {
         ShowPercent = YES;
     };

#### Finder
# Open windows instead of tabs
FinderSpawnTab = 0;
# Show all extensions
AppleShowAllExtensions = 1;
# Keep folders on top when sorting
"_FXSortFoldersFirst" = 1;

#### Spotlight
# Move to top right
lastWindowPosition = "{{600, 722}, {680, 56}}";
userHasMovedWindow = 1;

