#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo cd-ing into  ~/.vim/bundle/
cd ~/.vim/bundle/
echo deleting contents of ~/.vim/bundle/
rm -rf *

echo 
git clone git://github.com/altercation/vim-colors-solarized.git

echo 
git clone git://github.com/scrooloose/nerdtree.git

echo 
git clone git://github.com/jimenezrick/vimerl.git

echo 
git clone git://github.com/kchmck/vim-coffee-script.git 

echo
git clone git://github.com/groenewege/vim-less.git

echo 
git clone git://github.com/majutsushi/tagbar.git


echo 
git clone git://github.com/mileszs/ack.vim.git
