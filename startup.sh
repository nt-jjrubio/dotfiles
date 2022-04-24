#!/bin/bash
sudo apt update
sudo apt upgrade

sudo apt install htop tmux neovim fzf silversearcher-ag git build-essential flatpak gnome-software-plugin-flatpak fish curl exa

echo "Instalando omf..."
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

fish -c "omf install bobthefish"
fish -c "omf install bass"

echo "Instalando vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Instalando nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo "Copiando dotfiles..."
git clone https://github.com/nt-jjrubio/dotfiles.git /tmp/dotfiles/
cp /tmp/dotfiles/.tmux.conf ~
cp -R /tmp/dotfiles/nvim ~/.config/
cp -R /tmp/dotfiles/fish/functions/* ~/.config/fish/functions/
echo "load_nvm > /dev/stderr" >> ~/.config/fish/config.fish

echo "Instalando nvim plugins"
nvim -c "PlugInstall" -c "qa!"

echo "Cambiando shell por fish"
chsh -s /usr/bin/fish

echo -e "\e[33mInstalación terminada\e[0m"