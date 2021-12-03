" basic config
" ----------------------------------------------------------------

autocmd!

scriptencoding utf-8

let g:airline_theme='one'

set nocompatible
set number
syntax enable
set fileencodings=utf-8
set encoding=utf-8
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab

if has('nvim')
    set inccommand=split
endif

set t_BE=

set nosc noru nosm

set lazyredraw

set ignorecase

set smarttab

" indents
" --------------------------------------------------------------
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set nowrap
set backspace=indent,eol,start
set relativenumber
set nu
set hidden
set noerrorbells
set termguicolors
set colorcolumn=80
set signcolumn=yes
set ai
set si


set path+=**
set wildignore+=*/node_modules/*

autocmd InsertLeave * set nopaste

set formatoptions+=r

" Highlights
" ------------------------------------------------------------------
set cursorline

highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000


autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" imports
" --------------------------------------------------------------

runtime ./plug.vim
if has('unix')
    let s:uname = system("uname -s")
    
    if s:uname == "Darwin\n"
        runtime ./macos.vim
    endif
endif

runtime ./map.vim

" colors
" -------------------------------------------------------------
if exists("&termguicolors") && exists("&winblend")
    syntax enable
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
endif

set exrc

set foldmethod=marker foldlevel=0

set background=dark
colorscheme one
highlight Normal guibg=NONE

