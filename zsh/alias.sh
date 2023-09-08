# Launch neovim
alias v="nvim"
# custom git commands (maybe change this to g instead of s)
alias s="$BIN/s.sh"
# Close terminal
alias q="exit"
alias ':q'="exit"
# Docker remove all containers
alias d-rm="docker ps -q -a | xargs docker stop && docker ps -q -a | xargs docker rm"
# Docker remove all images
alias d-rmi="docker images -a -q | xargs docker rmi"
# Open terminal on current working dir
alias t="i3-sensible-terminal ."
# Lauch key recognition tool
alias key="$BIN/key.sh"
# kubectl (kubernetes)
alias k="kubectl"

if [ -f "${ZSH_PRIVATE}/alias.sh" ]; then
  source $ZSH_PRIVATE/alias.sh
fi
