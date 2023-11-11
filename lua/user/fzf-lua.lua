vim.api.nvim_set_keymap('n', '<c-P>', ':<C-U>lua require("fzf-lua").files()<CR>', {noremap = true})
