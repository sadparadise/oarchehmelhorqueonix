ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
cp vconsole.conf /etc/vconsole.conf
cp locale.conf /etc/locale.conf
cp hostname /etc/hostname
cp mirrorlist /etc/pacman.d/mirrorlist

pacman -Syu grub efibootmgr intel-ucode networkmanager man-db man-pages nano neovim

grub-install --efi-directory="/boot/efi" --bootloader-id="GRUB" --target="x86_64-efi"
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable --now systemd-networkd NetworkManager

# Generics
pacman -S sudo opendoas i3status xf86-video-intel vulkan-intel mesa syncthing pulseaudio pulseaudio-alsa alsa-firmware alsa-utils sof-firmware sxiv mpv zathura zathura-pdf-poppler stow gimp thunderbird qbittorrent udiskie zsh zsh-completions dunst xdg-user-dirs firefox pcmanfm kitty emacs discord base-devel git lxappearance pavucontrol krecorder pass gnome-themes-extra wqy-zenhei noto-fonts-emoji neofetch htop obs-studio tor torbrowser-launcher libreoffice-still polkit tmux yt-dlp

# For xorg
# pacman -S xorg xorg-xinit xbindkeys xlockmore maim i3-wm hsetroot xclip 

# For wayland
pacman -S sway waybar swaybg swaylock xdg-desktop-portal-wlr wl-clipboard grim slurp

useradd -m -g wheel gui
usermod -aG audio gui
usermod -aG sys gui

cp sudoers /etc/sudoers
cp doas.conf /etc/doas.conf
