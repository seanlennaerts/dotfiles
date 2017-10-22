# Open sublime from terminal
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

# Go to version-control directory
alias vc="cd ~/Documents/version-control"

# SSH to UBC Linux Server
alias ubc="ssh -Y k4c9@remote.ugrad.cs.ubc.ca"

# Go to CPSC310 directory
alias 310="cd ~/Documents/CPSC310/cpsc310project"

alias 313="cd ~/Documents/CPSC313"
alias 317="cd ~/Documents/CPSC317"
alias 304="cd ~/Documents/CPSC304"

# Go to air monster (dropbox to desktop)
alias send="cd /Volumes/Air\ Monster\ Local"

# Enable tab completion
source ~/.git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"
yellow="\[\033[1;33m\]"
lcyan="\[\033[1;36m\]"

# Change command prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$yellow\u$green\$(__git_ps1)$lcyan \W $ $reset"