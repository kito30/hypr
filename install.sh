#!/bin/bash

#Install Hyprland essential
yay -S --needed --noconfirm \
   xdg-desktop-portal-hyprland hyprpaper hyprland hypridle hyprlock;
# Install packages
yay -S --needed --noconfirm \
   cmake meson cpio pkg-config brightnessctl catnap-git sddm xdg-desktop-portal-gtk wpgtk \
   gthumb google-chrome kitty waybar swww waypaper fastfetch vesktop-bin btop qt6ct \
   nwg-look onedrivegui qt6-wayland polkit-gnome rofi-wayland network-manager-applet blueman \
   visual-studio-code-bin mpv ark fcitx5 fcitx5-qt fcitx5-gtk fcitx5-bamboo fcitx5-mozc \
   fcitx5-configtool powertop winegui-bin github-cli fish libreoffice-fresh tumbler udiskie \
   nerd-fonts thunar nodejs jdk-openjdk python-pywal16 npm;

# Wait for package installations to complete
sleep 5

#Screenshot utility
yay -S --needed --noconfirm \
   wl-clipboard grim slurp cliphist swappy;

yay -S steam;
# Install wpgtk themes and generate configurations
wpg-install.sh -G;
wpg-install.sh -r;
wpg-install.sh -i;

cp -rf .config/ .fonts/ ~/.;
# Enable and start services
systemctl enable bluetooth;
systemctl enable sddm;
systemctl start sddm;
