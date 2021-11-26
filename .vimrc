" ENV

set nocompatible
set t_Co=256
set number
set background=dark
syntax enable
set ruler
filetype indent on
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set nowrap
set backspace=indent,eol,start
set smartindent
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set termguicolors
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set cmdheight=2

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community-gruvbox'
call plug#end

colorscheme gruvbox
highlight normal guibg=none

" FILE SEARCH
set path+=**
set wildmenu


filetype plugin on

