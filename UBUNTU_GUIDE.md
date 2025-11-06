# UBUNTU_GUIDE.md - Setting up VLSI Toolchain on Ubuntu

## 1️⃣ Prerequisites

* Ubuntu 22.04 LTS or 20.04 LTS
* Sufficient disk space (~10 GB)
* Recommended RAM: 8+ GB

---

## 2️⃣ Update and Install Dependencies

Open a terminal and run:

```bash
sudo apt update && sudo apt upgrade -y

sudo apt install -y git build-essential m4 tcsh csh flex bison gawk \
libx11-dev libx11-xcb-dev libxcb1-dev libxrender-dev libxpm-dev libjpeg-dev \
libglu1-mesa-dev libgl1-mesa-dev libcairo2-dev tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev \
xterm vim-gtk3 autoconf automake libtool pkg-config libreadline-dev libxaw7 libxaw7-dev \
tcl-tclreadline python3 python3-tk
```

---

## 3️⃣ Clone and Install VLSI Toolchain

```bash
cd ~
git clone https://github.com/yogamayaTDG/analogvlsitoolset.git
cd analogvlsitoolset
chmod +x install-tools.sh setup-env.sh
./install-tools.sh
./setup-env.sh
```

---

## 4️⃣ Environment Variables

`setup-env.sh` will automatically set:

* `PDK_ROOT=/usr/local/share/pdk`
* `PDK=sky130A`
* `XSCHEM_LIBRARY_PATH` and `XSCHEM_RC`
* Aliases for Magic (`magic` and `magic130`)

These are appended to your `~/.bashrc`.

---

## 5️⃣ Test Installation

Run the tools:

```bash
magic130  # Magic with Sky130
xschem     # Schematic editor
ngspice    # SPICE simulation
netgen     # LVS verification
```

---

## 6️⃣ Notes

* Ubuntu 22.04 with GUI/X11 support is recommended.
* For headless servers, skip GUI tools or use X forwarding.
* Build may take several GB of disk space and considerable time.
