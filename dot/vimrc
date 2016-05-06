set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

colorscheme molokai
set background=light
set backspace=2
set colorcolumn=81                  "show the 80 char rule
set expandtab
set iminsert=0
set imsearch=0
set laststatus=2
set noimdisable
set noswapfile
set number                          "show the line number of the one i'm on
set relativenumber                  "set relative numberlines
set shiftwidth=2                    "set default indenting to 2 spaces
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
set textwidth=72

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <C-n> :NERDTreeToggle<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Load local configuration
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
