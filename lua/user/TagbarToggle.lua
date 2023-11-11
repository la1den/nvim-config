-- F8 key will toggle the Tagbar window
-- nmap <F9> :TagbarToggle<CR>
vim.api.nvim_set_keymap('n', '<F9>', ':TagbarToggle<CR>', {noremap = true, silent = true})
