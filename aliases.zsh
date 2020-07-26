# Shortcuts
alias copyssh="id_rsa.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias c="clear"

# Search history
alias hg="history | grep -i"

# Search running processes
alias wg="what | grep -v grep | grep -i"
alias what="ps waux"

# LS aliases
_LS="/usr/local/opt/coreutils/libexec/gnubin/ls -AlFo --color --group-directories-first"
alias ll="$_LS"
alias la="$_LS -a"
alias lh="$_LS -h"
alias ls="$_LS"
alias lt="$_LS -t"
alias lll='ll|less'
alias lhl='lh|less'

# I always forget how to create a tarball
alias htar="echo 'tar czf <name.tar.gz> <directory>'"


# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"

# Laravel
alias a="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias seed="php artisan db:seed"

# Vagrant
alias v="vagrant global-status"
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vreload="vagrant reload"
alias vrebuild="vagrant destroy --force && vagrant up"

# Docker
alias docky='docker exec -it docky-logic bash'

# Git
# alias gst="git status"
# alias gb="git branch"
# alias gc="git checkout"
# alias gl="git log --oneline --decorate --color"
# alias amend="git add . && git commit --amend --no-edit"
# alias commit="git add . && git commit -m"
# alias diff="git diff"
# alias force="git push --force"
# alias nuke="git clean -df && git reset --hard"
# alias pop="git stash pop"
# alias pull="git pull"
# alias push="git push"
# alias resolve="git add . && git commit --no-edit"
# alias stash="git stash -u"
# alias unstage="git restore --staged ."
# alias wip="commit wip"
