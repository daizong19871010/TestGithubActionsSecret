#!/bin/bash

mkdir -p ~/.ssh
echo ${SHOGUNCAO_HAVA_A_TEST_SSH_KEY} > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
echo "cat ~/.ssh/id_rsa"
cat ~/.ssh/id_rsa
git clone git@github.com:shoguncao/hava_a_test.sh
