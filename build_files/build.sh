#!/bin/bash

#set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 copr -y enable g3tchoo/prismlauncher
dnf5 copr -y enable atim/heroic-games-launcher
dnf5 install -y lutris steam waydroid prismlauncher heroic-games-launcher-bin protontricks

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging
dnf5 copr -y disable g3tchoo/prismlauncher
dnf5 copr -y disable atim/heroic-games-launcher
#### Example for enabling a System Unit File

#systemctl enable podman.socket
