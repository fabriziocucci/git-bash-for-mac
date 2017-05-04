#!/bin/bash
set -e

cp .git-bash-for-mac.sh ~/.git-bash-for-mac.sh

curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

echo "" >> ~/.bash_profile
echo "### Git Bash for Mac" >> ~/.bash_profile
echo "" >> ~/.bash_profile
echo "source ~/.git-bash-for-mac.sh" >> ~/.bash_profile
