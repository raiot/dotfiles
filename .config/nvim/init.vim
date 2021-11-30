" basic config
" ----------------------------------------------------------------

autocmd!

scriptencoding utf-8

set nocompatible
set number
syntax enable
set fileencodings=utf-8
set encoding=utf-8
set title
set autoindent
set background=dark
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

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
    autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
    autocmd VimLeave * silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif


" file types
" ---------------------------------------------------------------

au BufNewFile,BufRead *.es6 setf javascript
au BufNewFile,BufRead *.tsx setf typescriptreact

au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown

au BufNewFile,BufRead *.flow set filetype=javascript

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.md

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

" colors
" -------------------------------------------------------------
if exists("&termguicolors") && exists("&winblend")
    syntax enable
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
    set background=dark
endif

set exrc

set foldmethod=marker foldlevel=0:

colorscheme gruvbox
highlight Normal guibg=NONE

