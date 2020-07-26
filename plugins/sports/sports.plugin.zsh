# sports.plugin.zsh

_sports_plugin_dir="${0:h}"

function prompt_sports() {
    local bg=15

    # Show the header if configured
    if [[ ! -z "${ZSH_PLUGIN_SPORTS_SHOW_HEADER}" ]]; then
        p10k segment -b $bg -t 'Sports:'
    fi

    for s in ${ZSH_PLUGIN_SPORTS}; do
        # shellcheck source=/dev/null
        source "${_sports_plugin_dir}/${s}.plugin.zsh"
    done
}