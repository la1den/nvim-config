--  The <Leader> key is a reference to a specific key defined by the mapleader variable.
vim.g.mapleader = ','

-- " move between panes to left/bottom/top/right
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true})


-- " add map to clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', {noremap = true})

vim.api.nvim_set_keymap('n', '<leader>Y', '"+Y', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>Y', '"+Y', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>P', '"+P', {noremap = true})

vim.api.nvim_set_keymap('n', '<leader>w', ':<C-U>w<CR>', {noremap = true})

 -- " Press i to enter insert mode, and ii to exit insert mode.
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', {noremap = true})

-- jump tabs mappings
vim.api.nvim_set_keymap('n', '<a-j>', '<cmd>tabprevious<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '<a-j>', '<Esc><cmd>tabprevious<CR>', {noremap = true})
vim.api.nvim_set_keymap('t', '<a-j>', '<Esc><cmd>tabprevious<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<a-k>', '<cmd>tabnext<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '<a-k>', '<Esc><cmd>tabnext<CR>', {noremap = true})
vim.api.nvim_set_keymap('t', '<a-k>', '<Esc><cmd>tabnext<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', {noremap = true})

for number = 1, 9 do
  local mapping = string.format("<c-%d>", number)
  vim.api.nvim_set_keymap('n', mapping, string.format('<cmd>tabnext %d <CR>', number), { noremap = true })
  vim.api.nvim_set_keymap('i', mapping, string.format('<cmd>tabnext %d <CR>', number), { noremap = true })
end
