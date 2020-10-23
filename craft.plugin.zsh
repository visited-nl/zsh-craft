#!/usr/bin/env zsh

# Based on https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/yii2

alias craft="./craft"

_craft_format_command () {
  awk '/^- [a-z]+/ { sub(":", "", $2); print $2 }'
}

_craft () {
  if [ -f ./craft ]; then
    _arguments \
      '1: :->command'\
      '*: :->params'

    case $state in
      command)

      local -a commands
      local -a name

      if [[ $words[2] == *\/ ]]; then
        name=$words[2]
      fi

      commands=(${(f)"$(./craft help $name --color=0 | _craft_format_command)"})
      compadd -Q -S '' -a -- commands
    esac
  fi
}

compdef _craft craft
