#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo cd-ing into  ~/.vim/bundle/
cd ~/.vim/bundle/
echo deleting contents of ~/.vim/bundle/
rm -rf *

echo cloning solarized  colorscheme
git clone git://github.com/altercation/vim-colors-solarized.git

echo cloning nerdtree
git clone git://github.com/scrooloose/nerdtree.git

echo cloning vimerl
git clone git://github.com/jimenezrick/vimerl.git

echo cloning vim-less
git clone git://github.com/groenewege/vim-less.git

echo cloning tagbar
git clone git://github.com/majutsushi/tagbar.git


echo cloning ack.vim
git clone git://github.com/mileszs/ack.vim.git
