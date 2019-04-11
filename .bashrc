export PATH=/usr/local/sbin:$PATH # for Homebrew
export PATH=/usr/local/bin:$PATH  # for Homebrew
export PHP_HOME=$HOME/local/php/versions
export PATH=$PATH:/usr/local/opt/go/libexec/bin # Go lang
# source $(brew --prefix php-version)/php-version.sh && php-version 5.4.0 >/dev/null

alias cdbps='cd /Applications/MAMP/htdocs/BPS'
alias ls='ls -lG'
alias sl='ls -lG'
alias cddev='cd ~/Develop'
export LSCOLORS=gxfxcxdxbxegedabagacad

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# git settings
source ~/.git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
export PS1=$PS1



# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/wkodate/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;