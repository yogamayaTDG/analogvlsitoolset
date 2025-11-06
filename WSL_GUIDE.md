# WSL_GUIDE.md - Setting up VLSI Toolchain on WSL / Ubuntu

## 1️⃣ Prerequisites

* **WSL 2** installed on Windows 10/11
* **Ubuntu 22.04 LTS** (or 20.04 LTS) installed in WSL
* **VcXsrv** or another X server installed for GUI support
* Sufficient disk space (~10 GB)

---

## 2️⃣ Install X server (VcXsrv)

1. Download and install from: [https://sourceforge.net/projects/vcxsrv/](https://sourceforge.net/projects/vcxsrv/)
2. Launch XLaunch:

   * Multiple windows
   * Start no client
   * Disable access control (for initial testing)

---

## 3️⃣ Ubuntu / WSL Basic Setup

Open Ubuntu terminal:

```bash
# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install essential dependencies
sudo apt install -y git build-essential m4 tcsh csh flex bison gawk \
libx11-dev libx11-xcb-dev libxcb1-dev libxrender-dev libxpm-dev libjpeg-dev \
libglu1-mesa-dev libgl1-mesa-dev libcairo2-dev tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev \
xterm vim-gtk3 autoconf automake libtool pkg-config libreadline-dev libxaw7 libxaw7-dev \
tcl-tclreadline python3 python3-tk
```

---

## 4️⃣ Set DISPLAY for WSL GUI

Add the following to `~/.bashrc`:

```bash
export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0.0
export LIBGL_ALWAYS_INDIRECT=1
```

Apply changes:

```bash
source ~/.bashrc
```

---

## 5️⃣ Clone and Install VLSI Toolchain

```bash
cd ~
git clone https://github.com/yogamayaTDG/analogvlsitoolset.git
cd analogvlsitoolset
chmod +x install-tools.sh setup-env.sh
./install-tools.sh
./setup-env.sh
```

---

## 6️⃣ Test Installation

* **Magic:**

```bash
magic130
```

* **Xschem:**

```bash
xschem
```

* **Ngspice:**

```bash
ngspice
```

* **Netgen:**

```bash
netgen
```

---

## 7️⃣ Notes for WSL

* Ensure VcXsrv is running before launching GUI tools
* For advanced Xserver settings, enable "Disable access control" and use `localhost:0.0` if DISPLAY issues arise
* Performance tip: WSL 2 with Ubuntu 22.04 and 8+ GB RAM is recommended for building Open_PDKs

---

## 8️⃣ Resources

* [Magic Layout Editor](https://opencircuitdesign.com/magic/)
* [Xschem](https://github.com/StefanSchippers/xschem)
* [Ngspice](https://git.code.sf.net/p/ngspice/ngspice)
* [Open_PDKs / SKY130](https://github.com/RTimothyEdwards/open_pdks)

