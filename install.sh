#!/bin/bash
set -e

curl -o ~/git-prompt.sh https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
curl -o ~/git-completion.bash https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

# Notes about the following here document:
# 1. in order to add a new line at the beginning of the here document, two new lines seems to be necessary;
# 2. in order to avoid command evaluation, i.e. "$(...), the starting delimiter must be enclosed in single quotes;
# 3. in order to add a new line at the end of the here document, no new line is necessary.
cat >> ~/.bash_profile <<'!'


### Git Bash for Mac

source ~/.git-prompt.sh
source ~/.git-completion.bash

DEFAULT="\[\033[0;00m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
CYAN="\[\033[0;36m\]"

export PS1=$GREEN"\u@\h"$YELLOW" \w"$CYAN'$(__git_ps1 " (%s)")'$DEFAULT"\n\$ "
!