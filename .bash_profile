export PS1='\h:\W $ '
alias cp='cp -i'
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'
alias rm='rm -i'

# MacPorts Installer addition2: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/usr/local/homebrew/Cellar/git-flow/0.4.1/bin:/opt/local/sbin:$PATH

# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/usr/local/homebrew/Cellar/httpd/2.2.22/sbin:$PATH:/usr/local/git/bin
# android
export PATH=$PATH:/Users/XXXXXXXXXX/android-sdk/platform-tools:/Users/XXXXXXXXXX/android-sdk/tools

# git alias
alias ga='git add .'
alias gc='git checkout'
alias gac='ga && git commit -a'
alias gm='git merge --no-ff'
alias gb='git branch'
alias gp='git pull'
alias gf='git flow'
alias gcd='git checkout develop'
alias gl='git log'
alias gd='git diff -w --color-words'
