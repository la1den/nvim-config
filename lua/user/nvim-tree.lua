-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- empty setup using defaults
require("nvim-tree").setup({
    open_on_setup_file = true,
    system_open = {
        cmd = script_path .. "/la1den-xdg-open",
    },
})


vim.api.nvim_set_keymap('n', '<F3>', ':<C-U>exe "NvimTreeToggle"<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<F3>', '<Esc>:<C-U>exe "NvimTreeToggle"<CR>', {noremap = true, silent = true})
