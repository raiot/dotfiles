lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter}})


nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>
nnoremap <C-g> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader> pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
