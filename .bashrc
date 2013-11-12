alias vi='vim'
alias l='ls -lh'
alias clr='clear'
alias vnc='/Applications/Chicken\ of\ the\ VNC.app/Contents/MacOS/Chicken\ of\ the\ VNC'
alias grep='grep --line-number --color'
export EDITOR=vim

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Git
alias gco='git checkout'
alias grm='git rm'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -m'
alias gs='git status'
alias gr='git rebase'
alias gri='git rebase -i'
alias gbd='git branch -D'
alias grep='grep --color'
alias gp='git pull'
function gpo() {
 BRANCH=$(git rev-parse --abbrev-ref HEAD)
 git push origin $BRANCH
}

# Vagrant Aliases
alias vp='vagrant provision'
alias vs='vagrant ssh'
alias vst='vagrant status'
alias vd='vagrant destroy'
function rvu() {
 rake vagrant_up_"$1"
}

# Knife Aliases
alias kcu='knife cookbook upload'
alias kdbff='knife data bag from file'

# Knife commands for production
alias kps='kp_search'
alias kp='knifeprod'
function knifeprod(){
  knife "$@" -c ~/.chef_PROD/knife.rb
}
function kp_search(){
  knife search node "$@" -c ~/.chef_PROD/knife.rb
}

#Colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  export PS1="$GREENBOLD\u@\h\[\033[00m\]:$CYANBOLD\w\[\033[00m\] \\$ "
}
prompt
