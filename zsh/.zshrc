# Source all files!!
if [[ -d ~/.zsh.d ]]; then
  for file in ~/.zsh.d/*.sh; do
    source "$file"
  done
fi


# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
