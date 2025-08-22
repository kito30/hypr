#!/bin/bash
set -e  # exit if any command fails

### ---------------------------------------------------------
### Install Hyprland essentials
### ---------------------------------------------------------
yay -S --needed --noconfirm \
  xdg-desktop-portal-hyprland \
  hyprland \
  hypridle \
  hyprlock

### ---------------------------------------------------------
### Install general packages
### ---------------------------------------------------------
yay -S --needed --noconfirm \
  cmake meson cpio pkg-config brightnessctl catnap-git sddm \
  xdg-desktop-portal-gtk wpgtk gthumb google-chrome kitty \
  ags-hyprpanel-git fcitx5-material-color waypaper matugen swww \
  fastfetch vesktop-bin btop nwg-look nwg-displays onedrivegui \
  qt6-wayland polkit-kde-agent gnome-keyring rofi-wayland \
  network-manager-applet bluedevil visual-studio-code-bin mpv \
  fcitx5 fcitx5-qt fcitx5-gtk fcitx5-bamboo fcitx5-mozc \
  fcitx5-configtool winegui-bin github-cli fish libreoffice-fresh \
  tumbler udiskie nerd-fonts nodejs jdk-openjdk python-pywal16 npm \
  gvfs-mtp dolphin xdg-desktop-portal-kde systemsettings \
  sddm-kcm plasma-thunderbolt print-manager plasma5support \
  plasma-integration

# Give system a little break after installs
sleep 5

### ---------------------------------------------------------
### Screenshot utilities
### ---------------------------------------------------------
yay -S --needed --noconfirm \
  wl-clipboard grim slurp cliphist swappy

### ---------------------------------------------------------
### Extra apps
### ---------------------------------------------------------
yay -S --needed --noconfirm steam

### ---------------------------------------------------------
### Setup wpgtk themes
### ---------------------------------------------------------
wpg-install.sh -G
wpg-install.sh -r
wpg-install.sh -i

### ---------------------------------------------------------
### Copy user configs
### ---------------------------------------------------------
cp -rf .config/ .fonts/ ~/

### ---------------------------------------------------------
### Setup SDDM theme
### ---------------------------------------------------------
# If you have sddm.zip instead of a folder, uncomment these:
# unzip -o sddm.zip -d /tmp/sddm
# sudo cp -rf /tmp/sddm/* /usr/share/sddm/themes/silent/
# rm -rf /tmp/sddm

# If you already have an "sddm/" folder in the repo:
sudo mkdir -p /usr/share/sddm/themes/silent
sudo cp -rf sddm/* /usr/share/sddm/themes/silent/

### ---------------------------------------------------------
### Enable & start services
### ---------------------------------------------------------
sudo systemctl enable bluetooth
sudo systemctl enable sddm
sudo systemctl start sddm
