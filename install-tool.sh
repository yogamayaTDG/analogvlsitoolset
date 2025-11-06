#!/bin/bash
set -e


# Update and install dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y git build-essential m4 tcsh csh flex bison gawk \
libx11-dev libx11-xcb-dev libxcb1-dev libxrender-dev libxpm-dev libjpeg-dev \
libglu1-mesa-dev libgl1-mesa-dev libcairo2-dev tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev \
xterm vim-gtk3 autoconf automake libtool pkg-config libreadline-dev libxaw7 libxaw7-dev \
tcl-tclreadline python3 python3-tk


# Create vlsitool directory
mkdir -p ~/vlsitool && cd ~/vlsitool


# Install Magic
git clone https://opencircuitdesign.com/git/magic
cd magic
./configure
make -j$(nproc)
sudo make install


# Install Xschem
cd ~/vlsitool
git clone https://github.com/StefanSchippers/xschem.git xschem-src
cd xschem-src
./configure
make -j$(nproc)
sudo make install


# Install Netgen
cd ~/vlsitool
git clone https://opencircuitdesign.com/git/netgen
cd netgen
./configure
make -j$(nproc)
sudo make install


# Install Ngspice
cd ~/vlsitool
git clone https://git.code.sf.net/p/ngspice/ngspice ngspice_git
cd ngspice_git
mkdir release
./autogen.sh
cd release
../configure --with-x --enable-xspice --disable-debug --enable-cider \
--with-readline=yes --enable-openmp --enable-osdi
make -j$(nproc)
sudo make install


# Install Open_PDKs (Sky130)
cd ~/vlsitool
git clone https://github.com/RTimothyEdwards/open_pdks.git
cd open_pdks
./configure --enable-sky130-pdk
make -j2
sudo make install


echo "Installation complete. Run ./setup-env.sh to configure environment variables."