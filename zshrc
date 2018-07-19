# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/sean/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sorin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Sean Config

# Aliases
alias bell="tput bel"
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
alias dev="cd ~/Documents/dev"
alias help="subl ~/Documents/dev/dotfiles/README.md"
alias iphone="react-native run-ios --device 'Sean iPhone'"
alias scrutil="~/Documents/dev/screenutil/scrutil"
alias small="~/Documents/dev/screenutil/scrutil t 2560 1600 32"
alias settings="subl ~/.zshrc"
alias setup="subl ~/Documents/dev/dotfiles/setup.sh"
alias ubc="ssh -Y k4c9@remote.ugrad.cs.ubc.ca"
# ssh -i ~/.ssh/id_rsa <username>@<public_ip>

# For rbenv to work properly
eval "$(rbenv init -)"

# For pyenv to work properly
eval "$(pyenv init -)"

# For nvm to work properly
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# For iterm title bar color to match One Dark theme
# https://codematters.blog/custom-iterm2-titlebar-background-colors-a088c6f2ec60
# echo -e "\033]6;1;bg;red;brightness;41\a"
# echo -e "\033]6;1;bg;green;brightness;45\a"
# echo -e "\033]6;1;bg;blue;brightness;62\a"

# For iterm fix key bindings
# https://stackoverflow.com/a/29403520
bindkey "^U" backward-kill-line
bindkey "^X^_" redo

# golang
# Setting go env
export GOPATH=$HOME/Documents/dev/go
# export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin

# For fish like auto complete
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[[ -s "/Users/sean/.gvm/scripts/gvm" ]] && source "/Users/sean/.gvm/scripts/gvm"

# flutter
export PATH=~/Documents/dev/flutter/bin:$PATH
