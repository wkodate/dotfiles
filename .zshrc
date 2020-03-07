# 参考: http://raichel.hatenablog.com/entry/2015/08/16/225536
# 色を使用出来るようにする
autoload -Uz colors
colors

# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit

# vcs_info
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
setopt prompt_subst

zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }
PS1='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f
%# '
fpath=(~/.zsh $fpath)

# auto-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
zstyle ':completion:*:*:git:*' script ~/.git-completion.zsh

# Homebrew
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PHP_HOME=$HOME/local/php/versions
export PATH=$PATH:/usr/local/opt/go/libexec/bin # Go lang
# source $(brew --prefix php-version)/php-version.sh && php-version 5.4.0 >/dev/null

# Alias
alias ls='ls -lG'
alias sl='ls -lG'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# git settings
source ~/.git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

# heroku autocomplete setup
#HEROKU_AC_BASH_SETUP_PATH=/Users/wkodate/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;
