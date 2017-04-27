#!/bin/bash

for file in ~/.vim  ~/.dircolors ~/.bashrc ~/.tmux.conf ~/.vimrc; do
    if [ -a $file ] && [ ! -L $file ]; then
        echo "$file already exists. Aborting..."
        exit 1
    fi
done
 
mkdir -p external
curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark -o external/.dircolors
mkdir -p external/.vim/colors
curl https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim -o external/.vim/colors/gruvbox.vim


root_dir=`pwd`

for file in .bashrc .tmux.conf .vimrc; do
    ln -s $root_dir/$file ~/$file
done

for file in .vim .dircolors; do
    ln -s $root_dir/external/$file ~/$file
done
