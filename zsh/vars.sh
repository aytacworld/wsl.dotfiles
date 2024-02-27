DEFAULT_USER=$(whoami)

export EDITOR=/usr/bin/nvim

export BIN="$DOTFILES/bin"

export PATH="$PATH:$HOME/.local/bin:$BIN:$HOME/bin"
export XDG_CONFIG_HOME="$HOME/.config"

export ZSH="$HOME/.oh-my-zsh"

export DOTNET_CLI_TELEMETRY_OPTOUT=1

export PATH="$PATH:/usr/local/go/bin"

export NVM_DIR="${XDG_CONFIG_HOME}/nvm"
export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('nvim')

if [ -f "${ZSH_PRIVATE}/vars.sh" ]; then
  source $ZSH_PRIVATE/vars.sh
fi
