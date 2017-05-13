#!/bin/bash

source ~/.git-completion.bash
source ~/.git-prompt.sh

DEFAULT="\[\033[0;00m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
CYAN="\[\033[0;36m\]"

export PS1=$GREEN"\u@\h"$YELLOW" \w"$CYAN'$(__git_ps1 " (%s)")'$DEFAULT"\n\$ "
