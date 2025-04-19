#!/bin/bash

mkdir -p "$HOME/.ssh/config.d"
echo "Include config.d/*.conf" >> $HOME/.ssh/config
chmod 700 "$HOME/.ssh"
chmod 700 "$HOME/.ssh/config.d"

echo "${SHOGUNCAO_HAVA_A_TEST_SSH_KEY}" > "$HOME/.ssh/config.d/hava_a_test"
chmod 600 "$HOME/.ssh/config.d/hava_a_test"
printf "Host github.com-hava_a_test\n  HostName github.com\n  User git\n  IdentityFile ~/.ssh/config.d/hava_a_test\n" > "$HOME/.ssh/config.d/hava_a_test.conf"

echo "cat ~/.ssh/config"
cat ~/.ssh/config
echo "~/.ssh/config.d/hava_a_test"
cat ~/.ssh/config.d/hava_a_test
echo "~/.ssh/config.d/hava_a_test.conf"
cat ~/.ssh/config.d/hava_a_test.conf

git clone git@github.com-hava_a_test:shoguncao/hava_a_test.sh
