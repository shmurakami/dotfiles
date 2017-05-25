# Created by newuser for 5.0.2
#export PS1='\h:\W $ '

# key bind like vim
#bindkey -v

export LANG=ja_JP.UTF-8

# history
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# zsh補完
fpath=($HOME/.zsh-completions/src $fpath)
autoload -Uz compinit; compinit
autoload -U promptinit; promptinit
autoload -Uz colors; colors

# 一斉置換
autoload -Uz zmv
alias zmv='noglob zmv -W'

zstyle ':completion:*' verbose yes
zstyle ':completion:*' format '%B%d%b'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# option
setopt auto_cd
DIRSTACKSIZE=100
setopt auto_pushd
setopt pushd_ignore_dups

setopt print_eight_bit

setopt extended_glob

setopt hist_ignore_space

setopt prompt_subst

unsetopt auto_menu

## set prompt
PROMPT=""
PROMPT+="%(?.%F{green}%m%f.%F{red}%m%f) "
PROMPT+="%F{cyan}%~%f "
PROMPT+="$ "
#PROMPT='%m:%d $ '

# report
REPORTTIME=3

setopt correct

# directory hash
hash -d monipla=$HOME/work/mpfb/monipla2
hash -d account=$HOME/work/mpfb/monipla_account
hash -d aaid=$HOME/work/mpfb/aaid
hash -d refuel=$HOME/work/refuel4/server
hash -d admin=$HOME/work/refuel4/admin
hash -d api=$HOME/work/refuel4/api

# space separator
autoload -Uz select-word-style
select-word-style default
export WORDCHARS='_-&;@/ '
zstyle ':zle:*' word-style unspecified

# PATH
PATH=/usr/local/bin:$PATH

# phpenv
export PATH="/Users/shunsukemurakami/.phpenv/bin:$PATH"
eval "$(phpenv init -)"
export PATH=$PATH:/usr/local/php/vendor/bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# golang
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/work/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# npm
export PATH=$PATH:/usr/local/share/npm/bin/

# less
export LESS='-i -M -R'

# python
#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh

## create emacs env file
perl -wle \
    'do { print qq/(setenv "$_" "$ENV{$_}")/ if exists $ENV{$_} } for @ARGV' \
    PATH > ~/.emacs.d/shellenv.el

# android tools
export PATH=$PATH:$HOME/android-sdk/tools:$HOME/android-sdk/platform-tools

# genymotion
#export PATH=$PATH:/Applications/Genymotion.app/Contents/MacOS:/Applications/Genymotion\ Shell.app/Contents/MacOS

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODEBREW_ROOT=$HOME/.nodebrew

# gulp
#eval "$(gulp --completion=zsh)"

source $HOME/.sh_aliases

# Kubernetes
export AWS_PROFILE=kubernetes
source <(kubectl completion zsh)

###-begin-nativescript-completion-###
if complete &>/dev/null; then
  _nativescript_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           nativescript completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _nativescript_completion -o default nativescript
elif compctl &>/dev/null; then
  _nativescript_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       nativescript completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _nativescript_completion -f nativescript
fi
###-end-nativescript-completion-######-begin-tns-completion-###
if complete &>/dev/null; then
  _tns_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           tns completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _tns_completion -o default tns
elif compctl &>/dev/null; then
  _tns_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       tns completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _tns_completion -f tns
fi
###-end-tns-completion-###


# The next line updates PATH for the Google Cloud SDK.
#source '/Users/shunsukemurakami/work/google/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/shunsukemurakami/work/google/google-cloud-sdk/completion.zsh.inc'
