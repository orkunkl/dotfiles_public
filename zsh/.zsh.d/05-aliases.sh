alias l="ls"
alias ls="ls --color=auto --group-directories-first -h"
alias df="df -h"
alias du="du -ch"
alias diff="colordiff -u"
alias less="less -R"
alias agj="ag --java --scala"
alias cat="bat"
alias pullrepos="ls | xargs -P10 -I{} git -C {} pull"
alias c="clear"
alias vim="nvim"
alias xclip="xclip -sel clip"

mkcd ()
{
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

gamp() {
	git cma "$1"
  git push
}

enable_ssh_forw() {
  ssh -vND 400 forward@streisand
}  
