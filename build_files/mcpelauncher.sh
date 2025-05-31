#!/bin/bash
cat | tee /etc/yum.repos.d/minecraft-linux-pkg.repo << 'EOF'
[minecraft-linux-pkg]
name=minecraft-linux-pkg
baseurl=https://minecraft-linux.github.io/pkg/fedora-42
enabled=1
countme=1
repo_gpgcheck=0
type=rpm
gpgcheck=1
skip_if_unavailable=False
gpgkey=https://minecraft-linux.github.io/pkg/deb/pubkey.gpg
EOF

dnf5 -y install mcpelauncher-manifest mcpelauncher-ui-manifest msa-manifest
