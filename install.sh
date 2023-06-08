systemctl enable --now systemd-networkd NetworkManager

cp mirrorlist /etc/pacman.d/mirrorlist

# Generics
pacman -Syu sudo opendoas i3status xf86-video-intel vulkan-intel mesa syncthing pulseaudio pulseaudio-alsa alsa-firmware alsa-utils sof-firmware sxiv mpv zathura zathura-pdf-poppler stow gimp thunderbird qbittorrent udiskie zsh zsh-completions dunst xdg-user-dirs firefox pcmanfm kitty emacs discord base-devel git lxappearance pavucontrol krecorder pass neovim nano man-pages man-db gnome-themes-extra wqy-zenhei noto-fonts-emoji neofetch htop obs-studio tor torbrowser-launcher libreoffice-still polkit tmux

# For xorg
# pacman -S xorg xorg-xinit xbindkeys xlockmore maim i3-wm hsetroot xclip 

# For wayland
pacman -S sway swaybg wmenu xdg-desktop-portal-wlr wl-clipboard grim slurp

cp doas.conf /etc/doas.conf

useradd -g wheel gui
usermod -aG audio gui
usermod -aG sys gui
