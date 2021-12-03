let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidder = 1
let NERDTreeKeepTreeInNewTab = 1
let NERDTreeIGnore=['\\.git', '\\.swo$', '\\.swp$']
noremap <S-F8> :NERDTreeToggle<CR>
noremap <leader>nt :NERDTreeFind<CR>

autocmd VimEnter * NERDTree

autocmd BufEnter NERD_tree_* | execute 'normal R'
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif
