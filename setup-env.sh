#!/bin/bash


# Set PDK environment variables
echo "export PDK_ROOT=/usr/local/share/pdk" >> ~/.bashrc
echo "export PDK=sky130A" >> ~/.bashrc


# Magic settings
echo "alias magic='magic -T \$PDK_ROOT/\$PDK/libs.tech/magic/sky130A.tech'" >> ~/.bashrc
echo "alias magic130='magic -T \$PDK_ROOT/\$PDK/libs.tech/magic/sky130A.tech'" >> ~/.bashrc


# Xschem library path
echo "export XSCHEM_LIBRARY_PATH=\$PDK_ROOT/\$PDK/libs.tech/xschem" >> ~/.bashrc
echo "export XSCHEM_RC=\$PDK_ROOT/\$PDK/libs.tech/xschem/xschemrc" >> ~/.bashrc


# DISPLAY for WSL GUI
echo "export DISPLAY=\$(grep -m 1 nameserver /etc/resolv.conf | awk '{print \$2}'):0.0" >> ~/.bashrc
echo "export LIBGL_ALWAYS_INDIRECT=1" >> ~/.bashrc


source ~/.bashrc


echo "Environment setup complete!"