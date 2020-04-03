ZSH="$HOME/.oh-my-zsh"

plugins=(aws git httpie kubectl golang)
autoload -U compinit && compinit

if [[ "$OSTYPE" = darwin* ]]; then
  plugins+=(osx)
fi

DISABLE_UPDATE_PROMPT=true

ZSH_THEME="half-life"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_left"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M - %d.%m.%y}"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="red"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="black"

fpath=($ZSH/functions $ZSH/completions $fpath)

source $ZSH/oh-my-zsh.sh
PROMPT=$'%{$limegreen%}%2~%{$reset_color%}$vcs_info_msg_0_%{$orange%} λ%{$reset_color%} '
