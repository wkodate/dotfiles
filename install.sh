#!/bin/sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
echo 'create .vimrc symbolic link'
ln -sf ~/dotfiles/.vim ~/.vim
echo 'create .vim symbolic link'
ln -sf ~/dotfiles/.viminfo ~/.viminfo
echo 'create .viminfo symbolic link'
ln -sf ~/dotfiles/.zshrc ~/.zshrc
echo 'create .zshrc symbolic link'
ln -sf ~/dotfiles/.zsh_profile ~/.zsh_profile
echo 'create .zsh_profile symbolic link'
ln -sf ~/dotfiles/.git-completion.zsh ~/.git-completion.zsh
echo 'create .git-completion.zsh symbolic link'
ln -sf ~/dotfiles/.git-prompt.sh ~/.git-prompt.sh
echo 'create .git-prompt.sh symbolic link'
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
echo 'create .gitconfig symbolic link'
ln -sf ~/dotfiles/.screenrc ~/.screenrc
echo 'create .screenrc symbolic link'
