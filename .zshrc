# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="../../.oh-my-zsh-themes/doubleend"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias wspace="cd ~/Documents/workspace"
alias la="ls -alht"
alias apstart="sudo /usr/local/bin/apachectl start"
alias apstop="sudo /usr/local/bin/apachectl stop"
alias tcstart="sudo tomcatctl start dr"
alias tcstop="sudo tomcatctl stop dr"
alias cdtrunk="cd /var/webapps/lampo.trunk"

# alias cddev   ="cd /var/webapps/lampo.chrisdev"
alias cdrelease="cd /var/webapps/lampo.release"
alias svns="svn status -u"
alias svnu="sudo -H -u web-code svn up"
alias sshtest1="ssh app1.test.daveramsey.com"

#bundle alias
alias bi="bundle install"
alias be="bundle exec"
alias ber="bundle exec rspec"

#rails alias
alias rs="rails s"
alias rc="rails c"

# git alias
alias gst="git status"
alias gco="git checkout"
alias gcom="git checkout master"
alias gco-="git checkout -"
alias gcob="git checkout -b"
alias grb="git rebase"
alias grbi="git rebase -i"
alias grbm="git rebase master"
alias gca="git commit -a"
alias gcam="git commit -am"
alias gcamend="git commit --amend --no-edit"
alias gcamendm="git commit --amend"
alias gcundo="git reset --soft HEAD~1"
alias gb="git branch"
alias gbd="git branch -d"
alias gpul="git pull"
alias gpulom="git pull origin master"
alias gf="git fetch"

alias gm="git merge"
alias ga="git add ."
alias grd="git add -u ."
alias gpusho="git push origin"
alias gpushom="git push origin master"
alias grpo="git remote prun origin"
alias gdif="git diff"
# git log
alias glog="git log"
alias glogp="git log --pretty=oneline"


alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

editzrc() {
  # cd ~
  atom ~/.zshrc
}

reloadzrc() {
  # cd ~
  . ~/.zshrc
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby rvm)

source $ZSH/oh-my-zsh.sh
unsetopt correct
unsetopt correct_all

export EDITOR=nano

# Customize to your needs...
export PATH=$PATH:/usr/local/git/bin
