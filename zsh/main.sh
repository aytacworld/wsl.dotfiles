DOTFILES=$HOME/.config
ZSH_CONFIG=$DOTFILES/zsh
ZSH_PRIVATE=$ZSH_CONFIG/private

source $ZSH_CONFIG/vars.sh
source $ZSH_CONFIG/alias.sh
source $ZSH_CONFIG/theme.sh
source $ZSH_CONFIG/apps.sh

plugins=(
  git
  zsh-nvm
  npm
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
