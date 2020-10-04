# curling.plugin.zsh

function prompt_curling() {
    local month=$(date "+%-m")
    
    # The season isn't active between June and August
    if [[ $month -gt 5 && $month -lt 9 ]]; then
        return
    fi

    p10k segment -i "${emoji[curling]}" -b 15 -t ''
}

prompt_curling
