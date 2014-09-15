#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
echo 'create .vimrc symbolic link'
ln -sf ~/dotfiles/.vim ~/.vim
echo 'create .vim symbolic link'
ln -sf ~/dotfiles/.viminfo ~/.viminfo
echo 'create .viminfo symbolic link'
ln -sf ~/dotfiles/.bashrc ~/.bashrc
echo 'create .bashrc symbolic link'
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
echo 'create .bash_profile symbolic link'
ln -sf ~/dotfiles/.git-completion.bash ~/.git-completion.bash
echo 'create .git-completion.bash symbolic link'
ln -sf ~/dotfiles/.git-prompt.sh ~/.git-prompt.sh
echo 'create .git-prompt.sh symbolic link'
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
echo 'create .gitconfig symbolic link'
ln -sf ~/dotfiles/.screenrc ~/.screenrc
echo 'create .screenrc symbolic link'
