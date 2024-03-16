sudo pacman -S --noconfirm hyprland sddm  xdg-desktop-portal-hyprland xdg-desktop-portal-gtk  
yay -S --noconfirm google-chrome kitty waybar swww waypaper neofetch thunar vesktop-bin steam btop qt6ct nwg-look onedrivegui qt6-wayland qt5-wayland polkit-kde-agent rofi network-manager-applet blueman visual-studio-code-bin mpv spotify-launcher youtube-music-bin ark intel-media-driver jp2a fcitx5 fcitx5-qt fcitx5-gtk fcitx5-bamboo fcitx5-mozc fcitx5-configtool powertop winegui-bin github-cli fish libreoffice-fresh hyprlock tumbler breeze-icons

sleep 5

systemctl enable bluetooth
systemctl enable sddm
systemctl start sddm
