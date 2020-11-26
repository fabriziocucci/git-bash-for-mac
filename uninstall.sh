#!/bin/bash

rm ~/.git-bash-for-mac.sh
rm ~/.git-bash-for-mac-zsh.sh
rm ~/.git-completion.bash
rm ~/.git-prompt.sh

sed -i.backup '/source ~\/.git-bash-for-mac.sh/d' ~/.bash_profile
sed -i.backup '/source ~\/.git-bash-for-mac-zsh.sh/d' ~/.zshrc
