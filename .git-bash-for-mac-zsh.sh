#!/bin/zsh

autoload -U compinit && compinit
zstyle ':completion:*:*:git:*' ~/.git-completion.bash ~/.git-completion.zsh
source ~/.git-prompt.sh

autoload -U colors && colors
DEFAULT="%{$reset_color%}"
GREEN="%{$fg[green]%}"
YELLOW="%{$fg[yellow]%}"
CYAN="%{$fg[cyan]%}"

export PS1=$GREEN"$USER@%m"$YELLOW" %~"$CYAN'$(__git_ps1)'$DEFAULT$'\n'"\$ "
