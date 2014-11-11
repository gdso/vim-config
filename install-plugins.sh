#!/bin/bash

VIM_DIR=~/.vim
#VIM_DIR=/cygdrive/c/Users/Gregory/vimfiles

mkdir -p $VIM_DIR/autoload $VIM_DIR/bundle; \
curl -LSso $VIM_DIR/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo cd-ing into  ~/.vim/bundle/
cd $VIM_DIR/bundle/
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
cd vim-coffee-script
git checkout tags/v002
cd ..

echo
git clone git://github.com/groenewege/vim-less.git

echo 
git clone git://github.com/majutsushi/tagbar.git


echo 
git clone git://github.com/mileszs/ack.vim.git

echo
git clone git://github.com/kien/ctrlp.vim 

echo 
git clone git://github.com/elixir-lang/vim-elixir.git

echo 
git clone https://github.com/xolox/vim-session.git

echo 
git clone https://github.com/xolox/vim-misc.git

echo
git clone https://github.com/chrisbra/csv.vim.git

echo
git clone https://github.com/pangloss/vim-javascript.git

echo
git clone https://github.com/plasticboy/vim-markdown.git

echo
git clone https://github.com/bling/vim-airline

echo
git clone https://github.com/jceb/vim-orgmode.git

echo
git clone git://github.com/tpope/vim-speeddating.git

echo
git clone git clone git://github.com/tpope/vim-fugitive.git
