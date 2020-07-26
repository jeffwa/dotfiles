# sports.plugin.zsh

function prompt_sports() {
    local month=$(date "+%-m")
    local icon=""
    local bg=15

    if [[ $month -lt 6 || $month -gt 8 ]]; then
        icon="${icon}${emoji[curling]}"
    fi

    if [[ $month -gt 2 && $month -lt 11 ]]; then
        icon="${icon}${emoji[golf_green]} ${emoji[curling]}"
    fi

    p10k segment -b $bg -i $icon -t 'Sports:'
}