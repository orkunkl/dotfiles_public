sudo -v 
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade 

chsh -s `which zsh`
dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/themes/half-life.zsh-theme > ~/.oh-my-zsh/custom/themes/half-life.zsh-theme

brew bundle

cp -rf spectacle/Shortcuts ~/Library/Application Support/Spectacle
cp -rf bitbarplugins ~/Documents/
cp -rf karabiner ~/.config/

#iterm preferences
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

#ssh key generation
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096  -N "" -f ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
echo "Host *
 AddKeysToAgent yes
 UseKeychain yes
 IdentityFile ~/.ssh/id_rsa" > ~/.ssh/config
ssh-add -K ~/.ssh/id_rsa

mkdir ~/Workspace
mkdir ~/Workspace/go

set -x

stow -t ~ git
stow -t ~ zsh
ln -s nvim ~/.config/nvim
stow -t ~/.ssh/ ssh-conf/
mkdir ~/Documents/bitbarplugins
stow -t ~/Documents/bitbarplugins bitbarplugins
jenv rehash

stow -t ~ .git_template

sudo shutdown -r now
