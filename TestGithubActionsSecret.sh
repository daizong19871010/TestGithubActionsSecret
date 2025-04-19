#!/bin/bash

# 创建ssh的相关配置
mkdir -p "$HOME/.ssh/config.d"
if [ ! -f "$HOME/.ssh/config" ]; then
    touch "$HOME/.ssh/config"
fi
if ! grep -q "Include config.d/\*.conf" "$HOME/.ssh/config"; then
    {
        printf "Include config.d/*.conf\n\n"
        cat "$HOME/.ssh/config"
    } > "$HOME/.ssh/config.tmp" && mv "$HOME/.ssh/config.tmp" "$HOME/.ssh/config"
fi
chmod 700 "$HOME/.ssh"
chmod 700 "$HOME/.ssh/config.d"

# 写入hava_a_test的密钥
rm -rf "$HOME/.ssh/config.d/hava_a_test"
echo "${SHOGUNCAO_HAVA_A_TEST_SSH_KEY}" > "$HOME/.ssh/config.d/hava_a_test"
chmod 600 "$HOME/.ssh/config.d/hava_a_test"

# 创建$HOME/.ssh/config.d/hava_a_test.conf
rm -rf "$HOME/.ssh/config.d/hava_a_test.conf"
cat > "$HOME/.ssh/config.d/hava_a_test.conf" << EOF
Host github.com-hava_a_test
    HostName github.com
    IdentityFile ~/.ssh/config.d/hava_a_test
EOF

echo "cat $HOME/.ssh/config"
cat "$HOME/.ssh/config"
echo "cat $HOME/.ssh/config.d/hava_a_test"
cat "$HOME/.ssh/config.d/hava_a_test"
echo "cat $HOME/.ssh/config.d/hava_a_test.conf"
cat "$HOME/.ssh/config.d/hava_a_test.conf"

git clone git@github.com-hava_a_test:shoguncao/hava_a_test.sh
