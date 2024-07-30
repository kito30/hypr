#!/bin/bash

# Install packages
yay -S --needed --noconfirm \
    brightnessctl catnap-git sddm xdg-desktop-portal-hyprland xdg-desktop-portal-gtk wpgtk gthumb google-chrome grim kitty waybar-git swww waypaper fastfetch vesktop-bin steam btop qt6ct nwg-look onedrivegui qt6-wayland qt5-wayland polkit-gnome rofi-lbonn-wayland-git network-manager-applet blueman visual-studio-code-bin mpv spotify-launcher ark fcitx5 fcitx5-qt fcitx5-gtk fcitx5-bamboo fcitx5-mozc fcitx5-configtool powertop winegui-bin github-cli fish libreoffice-fresh hyprlock tumbler breeze-icons nwg-displays wlr-randr hypridle udiskie wl-clipboard nerd-fonts grim slurp copyq swappy thunar nodejs jdk-openjdk python-pywal npm;

# Wait for package installations to complete
sleep 5

# Install wpgtk themes and generate configurations
wpg-install.sh -G;
wpg-install.sh -r;

cp -rf .config/ .fonts/ ~/.;
# Enable and start services
systemctl enable bluetooth;
systemctl enable sddm;
systemctl start sddm;
