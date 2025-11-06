# Analog VLSI Toolset

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Platform: Ubuntu/WSL](https://img.shields.io/badge/Platform-Ubuntu%20%7C%20WSL-blue.svg)

**Analog VLSI Toolset** is an open-source collection of tools for **analog and mixed-signal IC design** using the **SkyWater SKY130** open PDK. It provides a complete workflow for **schematic capture, layout editing, simulation, and verification**, suitable for education, prototyping, and research in VLSI design.

---

## 🛠 Key Components

| Tool                   | Purpose                                                                                             | Repo                                                   |
| ---------------------- | --------------------------------------------------------------------------------------------------- | ------------------------------------------------------ |
| **Xschem**             | Schematic capture and design entry. Supports hierarchical designs and SPICE simulation.             | [GitHub](https://github.com/StefanSchippers/xschem)    |
| **Magic**              | Layout editor for ICs with automatic DRC/LVS support. Integrated with SKY130 technology files.      | [Official](https://opencircuitdesign.com/magic/)       |
| **Ngspice**            | SPICE-based circuit simulation for analog, digital, and mixed-signal circuits.                      | [GitHub](https://git.code.sf.net/p/ngspice/ngspice)    |
| **Netgen**             | Layout-versus-schematic (LVS) verification. Ensures layout matches schematic.                       | [Official](https://opencircuitdesign.com/netgen/)      |
| **Open_PDKs / SKY130** | Full process design kit including standard cells, SPICE models, design rules, and layout templates. | [GitHub](https://github.com/RTimothyEdwards/open_pdks) |

---

## ⚡ Features

* Pre-configured environment for **SkyWater SKY130 process nodes**
* Automatic installation and setup scripts for Ubuntu / WSL
* Ready-to-use configuration for **Magic `.magicrc`** and **Xschem `.spiceinit`**
* Supports multiple simulators and process corners (TT, SS, FF)
* Optional mirror setup for **Open_PDKs** for redundancy

---

## 🎯 Target Users

* University students and educators learning analog IC design
* Researchers prototyping analog/mixed-signal circuits
* Hobbyists exploring **open-source semiconductor design**
* Anyone needing a **ready-to-use VLSI toolchain** on Ubuntu or WSL

---

## 💻 Installation (Ubuntu / WSL)

1. **Clone the repository:**

```bash
git clone https://github.com/yogamayaTDG/analogvlsitoolset.git
cd analogvlsitoolset
```

2. **Run the installer scripts:**

```bash
chmod +x install-tools.sh setup-env.sh
./install-tools.sh
./setup-env.sh
```

3. **Optional: Set up Open_PDKs mirror**

```bash
./mirror-open_pdks.sh
```

---

## 🏗 Workflow

1. **Schematic entry** → Xschem
2. **Simulation** → Ngspice / Xyce
3. **Layout design** → Magic
4. **DRC/LVS verification** → Magic + Netgen
5. **Iterate and optimize** with PDK models

---

## 🖥 Running Tools

* **Magic:**

```bash
magic
```

or with SKY130 explicitly:

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

## 📚 WSL Users

* Install **VcXsrv** or another X server
* Ensure DISPLAY is set:

```bash
export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0.0
export LIBGL_ALWAYS_INDIRECT=1
```

* Launch GUI tools (Magic/Xschem) normally

---

## 📄 License

This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

---

## 🔗 References

* [Magic Layout Editor](https://opencircuitdesign.com/magic/)
* [Xschem](https://github.com/StefanSchippers/xschem)
* [Ngspice](https://git.code.sf.net/p/ngspice/ngspice)
* [Netgen LVS](https://opencircuitdesign.com/netgen/)
* [Open_PDKs / SKY130](https://github.com/RTimothyEdwards/open_pdks)
