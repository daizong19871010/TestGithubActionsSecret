#!/bin/bash

mkdir -p ~/.ssh/config.d
echo "Include config.d/*.conf" >> ~/.ssh/config
echo ${SHOGUNCAO_HAVA_A_TEST_SSH_KEY} > ~/.ssh/config.d/hava_a_test
chmod 600 ~/.ssh/config.d/hava_a_test
echo "Host github.com-hava_a_test\n  HostName github.com\n  User git\n  IdentityFile ~/.ssh/config.d/hava_a_test" > ~/.ssh/config.d/hava_a_test.conf
git clone git@github.com-hava_a_test:shoguncao/hava_a_test.sh
