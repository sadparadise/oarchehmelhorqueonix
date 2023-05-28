systemctl enable --now systemd-networkd NetworkManager

cp mirrorlist /etc/pacman.d/mirrorlist

pacman -Syu sudo opendoas xorg xorg-xinit xbindkeys syncthing xlockmore maim pulseaudio pulseaudio-alsa alsa-firmware sof-firmware i3-wm i3status sxiv mpv zathura zathura-pdf-poppler stow gimp thunderbird qbittorrent udiskie zsh zsh-completions dunst hsetroot xdg-user-dirs firefox pcmanfm kitty emacs discord base-devel git lxappearance pavucontrol krecorder pass neovim nano xclip man-pages man-db gnome-themes-extra wqy-zenhei noto-fonts-emoji neofetch htop obs-studio alsa-utils tor torbrowser-launcher libreoffice-still

cp doas.conf /etc/doas.conf

useradd -g wheel gui
usermod -aG audio gui
usermod -aG sys gui
