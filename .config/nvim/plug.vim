if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
    Plug 'gruvbox-community/gruvbox'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
call plug#end()
