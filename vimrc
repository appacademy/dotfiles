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

set background=dark
colorscheme molokai
set tabstop=2
set softtabstop=2
set shiftwidth=2                    "set default indenting to 2 spaces
set expandtab
set noimdisable
set iminsert=0
set imsearch=0
set noswapfile
set relativenumber                  "set relative numberlines
set number                          "show the line number of the one i'm on
set textwidth=72
set colorcolumn=81                  "show the 80 char rule
set laststatus=2

map <C-n> :NERDTreeToggle<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Load local configuration
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
