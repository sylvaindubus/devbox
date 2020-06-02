# ZSH theme config
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_DIR_COLOR=green
SPACESHIP_GIT_BRANCH_COLOR=red
SPACESHIP_PROMPT_ORDER=(user dir host git php time line_sep char)
ZSH_THEME="spaceship"
plugins=(git)

# Exports
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR="vim"
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f ~/devbox/config/custom/.zshrc ]; then
	source ~/devbox/config/custom/.zshrc
fi

source ~/.oh-my-zsh/oh-my-zsh.sh

# Git aliases
alias gpl="git pull"
alias gplr="git pull --rebase"
alias gps="git push -u"
alias ga="git add"
alias gcm="git commit"
alias gcmm="git commit -m"
alias gcma="git commit --amend"
alias gbr="git branch"
alias gco="git checkout"
alias gbl="git blame"
alias gsh="git show"
alias gst="git status"
alias glg="git log --graph --pretty=tformat:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%an %cr)%Creset' --abbrev-commit --date=relative"
alias gd="git diff"
alias grb="git rebase"
alias gm="git merge"
alias gb="git branch"
alias gr="git rebase"
alias gri="git rebase -i"

# Move to trash instead of remove command
rmt () {
	trash=~/Trash/$(date '+%s') && mkdir -p "${trash}" && mv "$@" "${trash}"
}
