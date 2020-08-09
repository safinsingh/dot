export TERM="xterm-256color"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000

autoload -Uz compinit
compinit

source /usr/share/nvm/init-nvm.sh
source $HOME/.cargo/env

export PATH="/home/safin/.deno/bin:/home/safin/Documents/vault:/usr/local/bin/trck:/opt/Discord/$PATH"

alias mirror='xrandr --output DP-1 --auto --same-as eDP-1 && killall polybar && bash ~/.config/polybar/launch.sh'
alias fetch='/home/safin/Downloads/rsfetch -P -d -H -w -U -t -s -r'
alias ls='exa --icons'
alias la='exa -a --icons'
alias ll='exa -l -a --icons'
alias tree='exa -a --icons --tree'

eval "$(starship init zsh)"
