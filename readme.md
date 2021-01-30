# macOS minimal setup

last update macOS Catalina 10.15

1. dock settings:
    - `defaults write com.apple.dock tilesize -int 36`
    - quickly remove all apps from dock `defaults write com.apple.dock persistent-apps -array`
    - killall Dock
1. install amphetamine etc. from appstore
1. clone dotfiles repo. Will be prompted to install command line utils.
1. install ohmyzsh from repo. macOS now comes with zsh out of the box.
1. rm default .zshrc. symlink .zshrc, gitconfig
1. `brew tap hombrew/cask`
1. `brew install google-chrome iterm2 moom visual-studio-code` etc.
1. iterm2 settings:
    - specify preferences dir `defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Documents/dev/dotfiles/"`
    - tell iterm2 to use custom preferences `defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true`
1. install nvm from repo then `nvm install --lts`
1. other things you might forget:
    - keyboard repeat and delay fast/short
    - until vscode setting sync exits preview: get Fira Code from github, 2 space tabs
    - add iterm2 to login items
