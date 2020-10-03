#!/bin/sh

echo "Cloning repositories..."

DEV=$HOME/dev
WEB=$HOME/web

# Make sure the target directories exist
mkdir -p $DEV
mkdir -p $WEB

# Tools
git clone git@bitbucket.org:prospagtour/tools.git $DEV/tools

# PST
git clone git@bitbucket.org:prospagtour/pstl5.git $WEB/pst
git clone git@bitbucket.org:prospagtour/live-scoreboard.git $WEB/livepst
git clone git@bitbucket.org:prospagtour/vagrant.git $DEV/pst-vagrant

# Personal
git clone git@bitbucket.org:jeffwa/jeffmclennan.com.git $WEB/jeffmclennan
git clone git@bitbucket.org:jeffwa/sterlandrix.git $WEB/sterlandrix

# COMABL
git clone git@bitbucket.org:jeffwa/comabl.git comabl
git clone git@bitbucket.org:jeffwa/comabl-configs comabl-configs
git clone git@bitbucket.org:jeffwa/comabl-laravel comabl-laravel
