vim.api.nvim_set_keymap('n', '<c-P>', '<cmd>lua require("fzf-lua").files()<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<F1>', '<cmd>FzfLua help_tags<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '<F1>', '<Esc><cmd>FzfLua help_tags<CR>', {noremap = true})
