# 参考: http://raichel.hatenablog.com/entry/2015/08/16/225536
# 色を使用出来るようにする
autoload -Uz colors
colors

# プロンプト
# 2行表示
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "

# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit

# vcs_info
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg
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
