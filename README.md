# Irium Install Script

This repository provides a simple Bash script to install **Iriun Webcam** and required audio dependencies on **Arch Linux**.

## 📦 What It Does

The script automates the following steps:

1. Clones and installs the [`yay`](https://github.com/Jguer/yay) AUR helper.
2. Installs the `iriunwebcam-bin` package using yay.
3. Installs ALSA (Advanced Linux Sound Architecture) dependencies using `pacman`.

## 🖥️ Requirements

- An Arch-based Linux distribution (e.g., Arch, Manjaro, EndeavourOS)
- `git` and `base-devel` installed (for building AUR packages)

## 🚀 How to Use

1. **Download or clone this repository:**

```bash
git clone https://github.com/Bimes69/Irium-Webcam-Fast-install
```
```bash
cd Irium-Webcam-Fast-install
```

```bash
chmod +x irium-install.sh
```

```bash
./irium-install.sh
```
🎥 About Iriun Webcam

Iriun allows you to use your Android phone as a wireless webcam on your PC over Wi-Fi or USB.
🛠️ Notes

Make sure your system is updated before running the script:

```bash
sudo pacman -Syu
```

If yay is already installed, you can comment out the first block of the script.
