" gdso's vimrc file | many years in the making
"
" -----------------------
" UPDATE HISTORY 
" =======================

" [06/19/2012] Added ack.vim
"              https://github.com/mileszs/ack.vim.git
" [06/16/2012] Added native clipboard support by:
"              set clipboard+=unnamed
" [06/15/2012] Manually removed yankring. 
" [06/14/2012] Fixed autocommand for todo.txt and *.coffee files. e.g.:
"              au BufNewFile,BufReadPost todo.txt setl shiftwidth=2 expandtab tabstop=2
" [06/11/2012] Added LESS css syntax support
"              https://github.com/groenewege/vim-less
" [06/02/2012] Added tagbar (via pathogen)
"              https://github.com/majutsushi/tagbar.git
" [04/27/2012] Added coffeescript settings:
"              For folding:
"              au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
"              For indentation:
"              au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
" [04/03/2012] Added vim-coffee-script as a bundle
"              https://github.com/kchmck/vim-coffee-script.git 
" [03/03/2012] Removed supertab 
"              https://github.com/ervandew/supertab
" [03/03/2012] Added vimerl plugin 
"              https://github.com/jimenezrick/vimerl
" [03/03/2012] Added pathogen, and simplifed filtype command 
"              https://github.com/tpope/vim-pathogen
" [< 03/03/2012] Life sucked, I didn't keep track of this
"
" -----------------------
" BASICS
" =======================
set expandtab "turn tabs into spaces, good practice
set tabstop=4 "tab results in 4 spaces
set shiftwidth=4 "shifting (tabbing) text results in +/- 4 spaces
set hlsearch "highlighted search
set incsearch "incremental search
set number "line numbers
set ruler "line numbers, column number, and % in ruler
"pathogen 
call pathogen#infect()
syntax on
filetype plugin indent on
set encoding=utf-8

" -----------------------
" LANGUAGES
" =======================
" ERLANG:
" vimerl plugin: https://github.com/jimenezrick/vimerl
" let g:erlangManPath='~/local/cellar/erlang-otp/lib/erlang/man'
let erlang_folding = 1
let erlang_show_errors = 1

" COFFESCRIPT:
" For folding:
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent foldenable foldlevel=2
" For indentation:
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab tabstop=2

" TODO FILES:
" For folding:
au BufNewFile,BufReadPost todo.txt setl foldmethod=indent nofoldenable
" For indentation:
au BufNewFile,BufReadPost todo.txt setl shiftwidth=2 expandtab tabstop=2


" for linux
" imap <M-Space> <Esc>
" for mac
imap <D-Space> <Esc>

" for mac clipboard integration:
set clipboard+=unnamed

map <C-t> :tabnew<CR>
map <C-b> :bnext<CR>
map <S-C-b> :bprevious<CR>
map s :w<CR>
map 1 :tabprevious<CR>
map 2 :tabnext<CR>
map ! :tabclose<CR>
map <F5> :set autoread<CR>:checktime<CR>
vmap 'y "+y
map 'p "+p

" custom commands for date, and removing trailing whitespace
"map <C-F10> <c-r>=strftime("%m/%d/%Y")<CR>

imap <F4> <C-R>=strftime("%m/%d/%Y")<CR><Esc>
imap <F4><F4> <C-R>=strftime("%m/%d/%Y %I:%M %p")<CR><Esc>
"map t :. s/^\(.\)$/TODO\1/
map t :. s/\(^.*\)TODO/\1DONE/
"iab idate <c-r>=strftime("%m/%d/%Y")<cr>
command RemoveTrailingWhitespace :%s/ \+$//

let Tlist_Ctags_Cmd='ctags'
set tags=~/.tags

"colorscheme darkocean 
"colorscheme koehler 
colorscheme solarized
set background=dark
  
"======================
" vim yankring PLUGIN
" =====================
" FIX to enable yankring persistence & the annoying warning 
"if has('viminfo')
"    set vi^=!
"endif

" =====================
" vimlatex suite PLUGIN
" =====================
" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
" filetype plugin on // set plugin option in one line

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse latex-suite. Set your grep
" program to alway generate a file-name.
set grepprg=grep\ -nH\ $*

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
