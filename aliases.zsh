# Shortcuts
alias copyssh="id_rsa.pub"
alias reloadshell="source $HOME/.zshrc"
#alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias c="clear"

# Quick way to rebuild the Launch Services database and get rid of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# Start DNSMasq when it's quit for no reason
alias restartdnsmasq='sudo launchctl stop homebrew.mxcl.dnsmasq && sudo launchctl start homebrew.mxcl.dnsmasq'
alias redns=restartdnsmasq
alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

# SSH
alias ssh="ssh -A"


# Search history
alias hg="history | grep -i"

# Search running processes
alias what="ps waux"
alias wg="what | grep -v grep | grep -i -e VSZ -e"
alias psmem="what -m | head -20"
alias pscpu="what -r | head -20"

# LS aliases
_LS="/usr/local/opt/coreutils/libexec/gnubin/ls -AlFo --color --group-directories-first"
alias ll="$_LS"
alias la="$_LS -a"
alias lh="$_LS -h"
alias ls="$_LS"
alias lt="$_LS -t"
alias lll='ll|less'
alias lhl='lh|less'

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"

# Make mkdir always build the full path as necessary and be verbose about it
alias mkdir="mkdir -pv"

# Shorten 'php artisan'
alias pa="php artisan"

# Git
alias ga="git add ."
alias gs="git status"
alias gfap="git fetch --all --prune"
#alias gb="git branch"
alias gc="git checkout"
alias gcb="gc -b"
alias glog="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -a -m"
alias pull="git pull"
alias push="git push"
alias pusha="push --all"
alias pusht="push --tags"


# Git Flow
alias gffs="git flow feature start"
alias gfff="git flow feature finish"
alias gfrs="git flow release start"
alias gfrf="git flow release finish"
alias gfhs="git flow hotfix start"
alias gfhf="git flow hotfix finish"

# tmux and tmuxinator helper aliases
#alias tmux='TERM=xterm-256color tmux -2'
#alias tmuxinator='TERM=xterm-256color tmuxinator'
#alias mux='TERM=xterm-256color mux'
#alias tma='tmux -CC attach -t'
#alias tmk='tmux kill-session -t'

# Vagrant
alias vup="vagrant up"
alias vssh="vagrant ssh"
alias vhalt="vagrant halt"

# Linux
alias update="sudo apt-get update && sudo apt-get upgrade" # Debian/Ubuntu
alias yupdate="sudo yum check-update && sudo yum update" # RH/CentOS/Amazon



# Git deprecated
alias gitfap="echo 'use gfap'"
alias gcam="echo 'use commit'"
alias gp="echo 'use push'"
alias gpa="echo 'use pusha'"
alias gpt="echo 'use pusht"

# Git (from Dries)
# alias diff="git diff"
# alias force="git push --force"
# alias nuke="git clean -df && git reset --hard"
# alias pop="git stash pop"
# alias resolve="git add . && git commit --no-edit"
# alias stash="git stash -u"
# alias unstage="git restore --staged ."
# alias wip="commit wip"
