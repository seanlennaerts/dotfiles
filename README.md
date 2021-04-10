# macOS minimal setup

last update macOS Catalina 10.15

1. dock settings:
    - `defaults write com.apple.dock tilesize -int 36`
    - quickly remove all apps from dock `defaults write com.apple.dock persistent-apps -array`
    - killall Dock
1. clone dotfiles repo. Will be prompted to install command line utils.
1. install ohmyzsh from repo. macOS now comes with zsh out of the box.
1. rm default .zshrc. symlink .zshrc, gitconfig
    ```
    $ ln -s ~/dev/dotfiles/zshrc ~/.zshrc
    $ ln -s ~/dev/dotfiles/gitconfig ~/.gitconfig
    $ ln -s ~/dev/dotfiles/gitignore_global ~/.gitignore_global
    $ ln -s ~/dev/dotfiles/READ_BEFORE_CLEAN_INSTALL.txt ~/Documents/READ_BEFORE_CLEAN_INSTALL.txt
    ```
1. `brew install iterm2 visual-studio-code brave-browser` etc.
1. iterm2 settings:
    - specify preferences dir `defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dev/dotfiles/"`
    - tell iterm2 to use custom preferences `defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true`
1. `brew install git gnupg` etc.
1. install nvm from repo then `nvm install --lts`
1. other things you might forget:
    - keyboard repeat and delay both all the way to the right
    - tracking speed 3rd from the right
    - add iterm2 to login items
    - top right corner display lock
