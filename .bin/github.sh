#!/usr/bin/env zsh

# GitHub SSH Setup
echo -e "%F{blue}- GitHub SSH Setup...%f"
echo "Create SSH key"

SSH_KEY_PATH="$HOME/.ssh"
if [[ ! -d "$SSH_KEY_PATH" ]]; then
    mkdir "$SSH_KEY_PATH"
fi

# Create SSH key if it doesn't exist
if [[ ! -f ${SSH_KEY_PATH}/id_rsa ]]; then
    ssh-keygen -N '' -f ${SSH_KEY_PATH}/id_rsa
    pbcopy < ${SSH_KEY_PATH}/id_rsa.pub
else
    echo "SSH key already exists. Skipping generation."
fi

sleep 1; echo "Open the GitHub settings page:"
sleep 1; open https://github.com/settings/ssh/new

# GitHub login
# print -P "%F{blue}- GitHub login start...%f"
# print "First, you need to choose SSH"
# print "Second, you need to choose id_rsa.pub"

# gh auth login -w
