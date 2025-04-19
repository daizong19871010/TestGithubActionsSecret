#!/bin/bash

mkdir -p ~/.ssh/config.d
echo "Include config.d/*.conf" >> ~/.ssh/config
echo ${SHOGUNCAO_HAVA_A_TEST_SSH_KEY} > ~/.ssh/config.d/HAVA_A_TEST
chmod 600 ~/.ssh/config.d/HAVA_A_TEST
echo "Host github.com-HAVA_A_TEST\n  HostName github.com\n  User git\n  IdentityFile ~/.ssh/config.d/HAVA_A_TEST" > ~/.ssh/config.d/HAVA_A_TEST.conf
git clone git@github.com-HAVA_A_TEST:shoguncao/hava_a_test.sh
