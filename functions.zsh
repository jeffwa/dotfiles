# Custom functions

# Make a directory and cd into it
# @note: mkdir is aliased to 'mkdir -pv' so no need for -p here
function mcd {
    mkdir "$1"
    cd "$1"
}

# cd up the given number of levels
function up {
    COUNTER="$@";

    # default $COUNTER to 1 if it isn't already set
    if [[ -z $COUNTER ]]; then
        COUNTER=1
    fi

    # make sure $COUNTER is a number
    if [ $COUNTER -eq $COUNTER 2> /dev/null ]; then
        # limit counter to max 10
        if [[ $COUNTER -gt 10 ]]; then
            echo -e "The upper limit is 10"
            COUNTER=10
        fi

        while [[ $COUNTER -gt 0 ]]
        do
            UP="${UP}../"
            COUNTER=$(( $COUNTER -1 ))
        done
        echo -e "cd $UP"
        cd $UP
        UP=''
    else
        # print usage and return error
        echo -e "usage: up [NUMBER]"
        return 1
    fi
}

# Check the weather
function weather {
    curl http://wttr.in/$1
}

# Make a backup of a file or directory with .YYYYMMDDHHIISS.bak added
function backup {
    if [ -f "$1" ]; then
        cp "$1" `dirname "$1"`/`basename "$1"`.`date +%Y%m%d%H%M%S`.bak
    elif [ -d "$1" ]; then
        cp -r "$1" `dirname "$1"`/`basename "$1"`.`date +%Y%m%d%H%M%S`.bak
    else
        echo "$1 does not exist"
    fi
}

# List the latest tag of the curent project
function gittag {
    if [ -d ".git" ]; then
        git rev-list --tags --max-count=1 | xargs -n 1 git describe --tags
    else
        echo -n "Not in a project"
        return 1
    fi
}
