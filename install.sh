#!/bin/bash

yay -S alacritty betterlockscreen conky cpupower eog exa fet.sh-git\
google-chrome-beta htop lightdm lightdm-slick-greeter linux linux-headers\
lxappearance-gtk3 network-manager-applet networkmanager nitrogen neovim\
papirus-icon-theme pulseaudio qtile-git reflector-nomirrorlist rofi\
ttf-font-awesome xf86-video-intel xorg\
zsh zsh-completions zsh-fast-syntax-highlighting

bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
