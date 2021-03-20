#!/bin/zsh

# Install packages
sudo apt install git zsh tmux curl neovim fzf

# Install ohmyzsh
if [[ ! -d ~/.oh-my-zsh ]]
then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install nodejs
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Clone dotfiles
git clone https://github.com/nt-jjrubio/dotfiles.git

# Install Plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Copy dotfiles
cp ./dotfiles/.tmux.conf ~/
cp ./dotfiles/.alacritty.yml ~/
cp -R ./dotfiles/.config/ ~/

# Install neovim pluggins
nvim -c "PlugInstall" -c "qa!"

echo -e "\e[33mInstalación terminada\e[0m"
