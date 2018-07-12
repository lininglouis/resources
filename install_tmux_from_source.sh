#!/bin/bash

# Install tmux from source
set -ex

[ -f /etc/os-release ] && . /etc/os-release || { echo "Could not find /etc/os-release"; exit 1;  }

TMUX_VERSION="2.7"
LIBEVENT_VERSION="2.0.22-stable"
NCURSES_VERSION="${NCURSES_VERSION}"
TMUX_tar_name=tmux-${TMUX_VERSION}.tar.gz
TMUX_URL="https://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/${TMUX_tar_name}"
 
 

WORKDIR="/tmp"
BUILD_DIR="${WORKDIR}/tmux_build_$(date +%y%m%d_%H%M%S)"
PKGCONFIG_DIR="${BUILD_DIR}/lib/pkgconfig"
TARGET_DIR="/usr/local/tmux-${TMUX_VERSION}"
TERMINFO_DIR_PATH="/usr/share/terminfo"
TERMINFO_DIRS_PATH="/etc/terminfo:/lib/terminfo:/usr/share/terminfo"

cd ${WORKDIR}

echo "Installing tmux for ${NAME}..."
if [ "${NAME}" = "Ubuntu" ]
then
    sudo apt-get -y install build-essential autoconf libtool pkg-config libevent-dev
    sudo apt-get install libncurses5-dev libncursesw5-dev

    if test -f ./${TMUX_tar_name}
    then
	echo "${TMUX_tar_name} has been downloaded"
	tar -xvzf ./${TMUX_tar_name}
    else
	echo "${TMUX_tar_name} not not downloaded"
	wget  ${TMUX_URL} | tar xvz	
    fi  

    cd tmux-${TMUX_VERSION}
    ./configure --prefix=${TARGET_DIR} && make && sudo make install
    cd ..
    rm -rf tmux-${TMUX_VERSION}
fi 
sudo ln -sf $TARGET_DIR/bin/tmux /usr/local/bin/tmux
