-- require("toggleterm").setup{}

-- autocmd TermEnter term://*toggleterm#*
--       \ tnoremap <silent><F2> <Cmd>exe v:count1 . "ToggleTerm"<CR>

-- nnoremap <silent><F2> <Cmd>exe v:count1 . "ToggleTerm"<CR>
-- inoremap <silent><F2> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

-- 当进入终端时，触发ToggleTerm命令
vim.cmd([[
  augroup TermEnterAutocmd
    au!
    autocmd TermEnter term://*toggleterm#* tnoremap <silent><F2> <Cmd>exe v:count1 . "ToggleTerm"<CR>
  augroup END
]])

-- 在普通模式下，按下<F2>键触发ToggleTerm命令
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>exe v:count1 . "ToggleTerm"<CR>', { noremap = true, silent = true })

-- 在插入模式下，按下<F2>键触发ToggleTerm命令
vim.api.nvim_set_keymap('i', '<F2>', '<Esc><cmd>exe v:count1 . "ToggleTerm"<CR>', { noremap = true, silent = true })
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#*  lua set_terminal_keymaps()')
