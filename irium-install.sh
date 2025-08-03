#!/bin/bash

set -e

echo "==> Cloning and installing yay..."
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

echo "==> Installing Iriun Webcam using yay..."
yay -S iriunwebcam-bin --noconfirm

echo "==> Installing dependencies via pacman..."
sudo pacman -S --noconfirm \
    alsa-lib \
    avahi \
    libusbmuxd \
    qt5-base \
    v4l2loopback-dkms \
    patchelf \
    android-tools \
    qt5-wayland

echo "==> Checking if the v4l2loopback module is loaded..."
if lsmod | grep -q v4l2loopback; then
    echo "✅ v4l2loopback module is already loaded."
else
    echo "⚙️ Loading v4l2loopback module..."
    sudo modprobe v4l2loopback
fi

echo "✅ Installation completed successfully!"
