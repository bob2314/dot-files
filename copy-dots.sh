#!/bin/bash

echo "~~~~~~~~~~~"
echo " Copying Dot files from HOME directory to HERE..."

cp ~/.bash_profile home/
cp ~/.bashrc home/
cp ~/.vimrc home/
cp ~/.zshrc home/
cp ~/.aliases.zsh home/

-s -alh

echo "...Dot files to backup."
echo "...Does not put them where they go, that is your job!"

