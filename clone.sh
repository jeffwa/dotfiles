#!/bin/sh

echo "Cloning repositories..."

DEV=$HOME/dev/src
OZENTIX=$HOME/dev/ozentix
DOCKFLOW=$HOME/dev/dockflow
THIRD=$HOME/dev/3rd

# Make sure the target directories exist
mkdir $DEV
mkdir $OZENTIX
mkdir $DOCKFLOW

# Personal
git clone git@bitbucket.org:prospagtour/tools.git $DEV/tools
git clone git@bitbucket.org:cabuki/bash.git $DEV/bash

# PST
git clone git@bitbucket.org:prospagtour/pstl5.git $DEV/pst
git clone git@bitbucket.org:prospagtour/live-scoreboard.git $DEV/live-scoreboard
git clone git@bitbucket.org:prospagtour/vagrant.git $DEV/pst-vagrant

# Ozentix
git clone git@bitbucket.org:cabuki/ozentix.git $OZENTIX/ozentix

# Dockflow
git clone git@dockflow.gitlab.com:dockflow/dockflow-docky-gui.git $DOCKFLOW/gui
git clone git@dockflow.gitlab.com:dockflow/dockflow-docky.git $DOCKFLOW/docky
git clone git@dockflow.gitlab.com:dockflow/docky-scraper.git $DOCKFLOW/scrapy
git clone git@dockflow.gitlab.com:dockflow/dockflow-docs.git $DOCKFLOW/docs
git clone git@dockflow.gitlab.com:dockflow/graph-tp.git $DOCKFLOW/graph-tp

# 3rd Party
