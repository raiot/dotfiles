if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
    Plug 'gruvbox-community/gruvbox'
    Plug 'neovim/nvim-lspconfig'
    Plug 'tami5/lspsaga.nvim', {'branch': 'nvim51'}
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'https://gitlab.com/yorickpeterse/nvim-window.git'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'rakr/vim-one'
call plug#end()
