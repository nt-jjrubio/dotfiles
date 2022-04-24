#!/bin/bash
sudo apt update
sudo apt upgrade

sudo apt install htop tmux kitty neovim fzf silversearcher-ag git build-essential flatpak gnome-software-plugin-flatpak fish curl exa

echo "Instalando omf..."
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

echo "Instalando vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Instalando nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo "Copiando dotfiles..."
git clone https://github.com/nt-jjrubio/dotfiles.git /tmp/dotfiles/
cp /tmp/dotfiles/.tmux.conf ~
cp /tmp/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
cp -R /tmp/dotfiles/.config/nvim ~/.config/
cp -R /tmp/dotfiles/.config/fish/functions/* ~/.config/fish/functions/
echo "load_nvm > /dev/stderr" >> ~/.config/fish/config.fish

echo "Descargando nerdfont"
sudo mkdir /usr/share/fonts/NerdFonts/
wget -P /tmp/  https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip
sudo unzip /tmp/CascadiaCode.zip -d /usr/share/fonts/NerdFonts/
sudo fc-cache -fv

echo "Instalando nvim plugins"
nvim -c "PlugInstall" -c "qa!"

echo "Cambiando shell por fish"
chsh -s /usr/bin/fish

fish -c "omf install bobthefish bass"

echo -e "\e[33mInstalación terminada\e[0m"