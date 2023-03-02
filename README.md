# macOS minimal setup

last update macOS Catalina 10.15

1. dock settings:
   - `defaults write com.apple.dock tilesize -int 36`
   - quickly remove all apps from dock `defaults write com.apple.dock persistent-apps -array`
   - ```bash
     # https://apple.stackexchange.com/a/70598
     defaults write com.apple.dock autohide-delay -int 0
     defaults write com.apple.dock autohide-time-modifier -float 0.4
     killall Dock
     ```
   - killall Dock
1. http clone dotfiles repo `git clone https://github.com/seanlennaerts/dotfiles.git`. Will be prompted to install command line utils.
1. install ohmyzsh from [repo](https://github.com/ohmyzsh/ohmyzsh#basic-installation). macOS now comes with zsh out of the box.
1. rm default .zshrc. symlink .zshrc, gitconfig, etc.
   ```bash
   ln -s ~/dev/dotfiles/zshrc ~/.zshrc
   ln -s ~/dev/dotfiles/gitconfig ~/.gitconfig
   ln -s ~/dev/dotfiles/gitignore_global ~/.gitignore_global
   ln -s ~/dev/dotfiles/READ_BEFORE_CLEAN_INSTALL.txt ~/Documents/READ_BEFORE_CLEAN_INSTALL.txt
   ```
1. install [brew](https://brew.sh/)
1. `brew install iterm2 visual-studio-code google-chrome caffeine git gnupg moom direnv` etc.
1. iterm2 settings (can do before launching iterm for first time):
   - specify preferences dir `defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dev/dotfiles/"`
   - tell iterm2 to use custom preferences `defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true`
1. other things you might forget:
   - keyboard repeat and delay both all the way to the right
   - tracking speed 3rd from the right
   - add iterm2 to login items
   - top right corner display lock
   - disabled space rearrange by most recently used
   - reset launchpad `defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock`
   - Uncheck "Show recent applications in Dock"
   - iCloud: ![icloud1](/screenshots/icloud1.png)![icloud2](/screenshots/icloud2.png)
   - Moom: ![moom1](/screenshots/moom1.png)![moom2](/screenshots/moom2.png)
