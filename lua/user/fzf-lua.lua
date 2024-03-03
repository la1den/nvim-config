require'fzf-lua'.setup {
  grep = {
      rg_opts="--hidden --column --line-number --no-heading --color=always --smart-case --max-columns=4096 -g \'!.git\' -e",
  },
  files = {
      fd_opts           = "--color=never --type f --hidden --follow --exclude .git --ignore-case"
  }

}
vim.api.nvim_set_keymap('n', '<c-P>', '<cmd>lua require("fzf-lua").files()<CR>', {noremap = true})

-- grep uses rg (or grep if rg is not installed) to search for a pattern, the results are then fed into fzf for further refinement using fuzzy search.
-- live_grep on the other hand uses fzf as a UI selector only, the fuzzy search functionality is disabled and each keystroke generates a new rg query with the input prompt text.
vim.api.nvim_set_keymap('n', '<leader>sf', '<cmd>lua require("fzf-lua").grep_project()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>sr', '<cmd>lua require("fzf-lua").live_grep_glob()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>/', '<cmd>lua require("fzf-lua").lgrep_curbuf()<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<F1>', '<cmd>FzfLua help_tags<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '<F1>', '<Esc><cmd>FzfLua help_tags<CR>', {noremap = true})
