# my_emoji plugin
#
# Extends emojis included by the built in emoji plugin

_my_emoji_plugin_dir="${0:h}"

() {
  local LC_ALL=en_US.UTF-8

  source "$_my_emoji_plugin_dir/emoji-char-definitions.zsh"
  unset _my_emoji_plugin_dir
}
