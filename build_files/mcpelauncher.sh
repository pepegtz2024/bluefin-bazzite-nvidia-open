#!/bin/bash
#AAAAAAAAAAAA
sudo dnf5 -y install libuv-devel libzip-devel protobuf-devel protobuf-compiler qt5-qtbase-devel qt5-qtwebengine-devel qt5-qtdeclarative-devel qt5-qtsvg-devel qt5-qtquickcontrols qt5-qtquickcontrols2
git clone --recursive https://github.com/minecraft-linux/mcpelauncher-ui-manifest.git mcpelauncher-ui
cd mcpelauncher-ui && mkdir -p build && cd build
cmake ..
make -j$(getconf _NPROCESSORS_ONLN)
