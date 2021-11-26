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
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=NONE

" FILE SEARCH
set path+=**
set wildmenu


filetype plugin on
lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter}})

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>
nnoremap <C-g> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader> pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
