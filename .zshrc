# Created by newuser for 5.0.2

export LANG=ja_JP.UTF-8
HISTFILE=~/.zsh_history
HISTZIE=1000000
SAVEHIST=1000000

# zsh補完
autoload -Uz compinit
compinit

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

#fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(~/work/git/zsh-completions/src $fpath)

setopt hist_ignore_space

# set prompt
PROMPT=""
PROMPT+="%(?.%F{green}%m%f.%F{red}%m%f) "
PROMPT+="%F{cyan}%~%f "
PROMPT+="$ "

# report
REPORTTIME=3

setopt correct

# directory hash
hash -d hoge=/tmp

# space separator
autoload -Uz select-word-style
select-word-style default
export WORDCHARS='_-&;@/ '
zstyle ':zle:*' word-style unspecified

# phpenv
export PATH="~/.phpenv/bin:$PATH"
eval "$(phpenv init -)"
export PATH=$PATH:/usr/local/php/vendor/bin

# golang
export GOROOT=/usr/local/go
export GOPATH=$GOROOT/lib
export PATH=$PATH:$GOPATH/bin

# npm
export PATH=$PATH:/usr/local/share/npm/bin/

alias cp='cp -i'
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'
alias rm='rm -i'
alias mv='mv -i'
alias less='less --tabs=4'

# git alias
alias ga='git add .'
alias gc='git checkout'
alias gci='git commit'
alias gpac='git pull && ga && git commit -a'
alias gac='ga && git commit -a'
alias gm='git merge --no-ff'
alias gmf='git merge --ff'
alias gb='git branch'
alias gp='git fetch && git merge --squash FETCH_HEAD'
alias gf='git flow'
alias gff='git flow feature'
alias gcd='git checkout develop'
alias gl='git log'
alias gd='git diff -w --color'
alias gs='git status'

