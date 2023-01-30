#!/bin/bash
# File              : dotfiles.sh
# Author            : Alexander Santos <asantos@lightningleap.us>
# Date              : 29.01.2023
# Last Modified Date: 29.01.2023
# Last Modified By  : Alexander Santos <asantos@lightningleap.us>
sudo apt install zsh git vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



git clone https://github.com/asantoss/dotfiles.git



mv dotfiles/.vimrc ~/.vimrc
mv dotfiles/.bashrc ~/.bashrc
mv dotfiles/.zshrc ~/.zshrc
 
rm -rf dotfiles
echo "Finishing copy of dotfiles"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
zsh
