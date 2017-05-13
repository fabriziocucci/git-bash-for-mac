#!/bin/bash
set -e

curl -o ~/.git-bash-for-mac.sh https://raw.githubusercontent.com/fabriziocucci/git-bash-for-mac/master/.git-bash-for-mac.sh
curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

echo "source ~/.git-bash-for-mac.sh" >> ~/.bash_profile
