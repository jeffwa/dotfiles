#!/bin/sh

echo "Cloning repositories..."

DEV=$HOME/dev/src
# STERLANDRIX=$HOME/dev/sterlandrix

# Make sure the target directories exist
mkdir $DEV
# mkdir $STERLANDRIX

# Personal
# git clone git@bitbucket.org:prospagtour/tools.git $DEV/tools
# git clone git@bitbucket.org:cabuki/bash.git $DEV/bash

# PST
git clone git@bitbucket.org:prospagtour/pstl5.git $DEV/pst
git clone git@bitbucket.org:prospagtour/live-scoreboard.git $DEV/live-scoreboard
git clone git@bitbucket.org:prospagtour/vagrant.git $DEV/pst-vagrant

# Sterlandrix
# git clone git@bitbucket.org:jeffwa/sterlandrix.git $STERLANDRIX/sterlandrix
