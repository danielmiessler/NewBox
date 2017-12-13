#!/bin/zsh

# Install software

apt install zsh
apt install git
apt install software-properties-common 
add-apt-repository ppa:jonathonf/vim
apt update
apt upgrade

# Copy your zprezto directory to home

cp -a ./zprezto /root/.zprezto

# Configure zprezto options

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Copy zshrc to home

cp ./zshrc /root/.zshrc

# Copy vim directory to home

cp ./.vim/ /root/.vim

# Copy vimrc to home

cp ./vimrc /root/.vimrc

# Change shell to zsh permanently

chsh -s /bin/zsh

# Message

echo ""
echo "Ok, now exit this shell and create a new one, and you should be all set."
