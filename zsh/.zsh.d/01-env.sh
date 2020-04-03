export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export DOTFILES=$HOME/dotfiles
export WORKSPACE="$HOME/Workspace"

eval "$(direnv hook zsh)"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

export LC_ALL=en_US.UTF-8
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
alias python=python3
