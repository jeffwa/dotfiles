# golf.plugin.zsh

function prompt_golf() {
    local month=$(date "+%-m")
    
    # The season isn't active between November and February
    if [[ $month -lt 3 || $month -gt 10 ]]; then
        return
    fi

    p10k segment -i $emoji[golf_green] -b 22 -t ''
}