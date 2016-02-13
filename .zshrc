# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
##ZSH_THEME="robbyrussell"
ZSH_THEME="../../.oh-my-zsh-themes/doubleend"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias workSpace="cd /Volumes/user/markm/WorkSpace/"
alias la="ls -alht"
alias apstart="sudo /usr/local/bin/apachectl start"
alias apstop="sudo /usr/local/bin/apachectl stop"
alias tcstart="sudo tomcatctl start dr"
alias tcstop="sudo tomcatctl stop dr"
alias cdtrunk="cd /var/webapps/lampo.trunk"

# alias cddev="cd /var/webapps/lampo.chrisdev"
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
alias gcob="git checkout -b"
alias grb="git rebase"
alias grbm="git rebase master"
alias gcam="git commit -am"
alias gb="git branch"
alias gbd="git branch -d"
alias gpom="git pull origin master"
alias gf="git fetch"

alias gm="git merge"
alias ga="git add ."
alias grd="git add -u ."
alias gpusho="git push origin"
alias gpushom="git push origin master"
# git log
alias glog="git log --pretty=oneline"


alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

editzrc() {
  # cd ~
  subl ~/.zshrc
}

reloadzrc() {
  # cd ~
  . ~/.zshrc
}

startlocal() {
  echo "STARTING APACHE & TOMCAT"
  apstart
  tcstart
}

stoplocal() {
  echo "STOPPING APACHE & TOMCAT"
  tcstop
  apstop
}

restartlocal() {
  echo "*** RESTARTING APACHE & TOMCAT ***"
  stoplocal
  startlocal
}

cdmods() {
  if [ -z "$1" ]
  then
    echo "enter the environment name (i.e. trunk, release, test1, etc)"
  else
    cd /var/webapps/lampo.$1/dr/modules
    pwd
  fi
}

cdcss() {
  if [ -z "$1" ]
  then
    echo "enter the environment name (i.e. trunk, release, test1, etc)"
  else
    cd /var/webapps/lampo.$1/dr/resources/css
  fi
}

cdgc() {
  if [ -z "$1" ]
  then
    echo "enter the environment (i.e. trunk, release, test1, etc)"
  else
    cd /var/webapps/lampo.$1/dr/modules/gc
 fi
}

cddr() {
  if [ -z "$1" ]
  then
    echo "enter the environment (i.e. trunk, release, test1, etc)"
  else
    cd /var/webapps/lampo.$1/dr
 fi
}

cdsites() {
  if [ -z "$1" ]
  then
    echo "enter the environment (i.e. trunk, release, test1, etc)"
  else
    cd /var/webapps/lampo.$1/dr/sites
 fi
}

updatemaps() {
  if [ -z "$1" ]
  then
    echo "enter the environment name (i.e. dr, fpucentral, core, coaching, andresgutierrez, elp, entreleadership, foundationsu, service, etc)"
  elif [ "$1" == "dr" ]
  then
    sudo /opt/local/apache2/bin/httxt2dbm -v -i /opt/local/etc/apache22/Maps/daveramsey.com.map -o /opt/local/etc/apache22/Maps/daveramsey.com.dbm
  elif [ "$1" == "fpucentral" ]
  then
    sudo /opt/local/apache2/bin/httxt2dbm -v -i /opt/local/etc/apache22/Maps/daveramsey.com.map -o /opt/local/etc/apache22/Maps/daveramsey.com.dbm
  else
cd    echo "$1 not yet implemented!"
  fi
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
export PATH=$PATH:/usr/local/git/bin:$HOME/.rvm/bin # Add RVM to PATH for scripting
