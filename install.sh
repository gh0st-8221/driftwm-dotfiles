mkdir -p ~/git
git clone https://github.com/gh0st-8221/driftwm-dotfiles.git ~/git/driftwm-dotfiles
git clone https://github.com/malbiruk/driftwm ~/git/driftwm
sudo pacman -Syu --noconfirm 7zip alacritty android-sdk android-sdk-build-tools android-tools android-udev arduino-cli base base-devel bluez bluez-utils bottom cava chrpath cmake cmatrix dpkg efibootmgr elyprismlauncher fastfetch fd firefox flatbuffers flatpak freetds fuzzel git github-cli glib2-devel gradle grim grub gst-plugin-pipewire helix htop intel-ucode ironbar jdk17-openjdk jdk21-openjdk kicad libayatana-appindicator libdisplay-info libfbclient libftdi libinput libpulse libva-nvidia-driver libxkbcommon linux linux-firmware linux-soundboard-git lua51 make mako mariadb-libs meson mkinitcpio mpv nano network-manager-applet networkmanager ninja nvidia-open nvtop obs-studio openrgb os-prober pipewire pipewire-alsa pipewire-jack pipewire-pulse pkgconf pkgfile playerctl postgresql-libs python-pyserial qbittorrent qt6-serialport qt6-svg rust scanmem sdbus-cpp seatd slurp smartmontools sof-firmware steam sudo tor torbrowser-launcher ueberzugpp unzip usbutils vim waydroid wayland-protocols wget wireplumber wl-clipboard wpa_supplicant xdg-desktop-portal-gnome xdg-desktop-portal-wlr xdg-utils xorg-xwayland xwayland-satellite yay yay-debug yazi zram-generator zsh  libdisplay-info libinput seatd mesa libxkbcommon
cd ~/git/driftwm
make build
sudo make install

cp -r ~/git/driftwm-dotfiles/.config/* ~/.config/
cp ~/git/driftwm-dotfiles/.zshrc ~/.zshrc
cp ~/git/driftwm-dotfiles/.zprofile ~/.zprofile

chsh -s $(which zsh) $USER
sudo chsh -s $(which zsh) root

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/plugins/zsh-syntax-highlighting

systemctl --user enable --now pipewire.service
systemctl --user enable --now pipewire-pulse.service
systemctl --user enable --now wireplumber.service