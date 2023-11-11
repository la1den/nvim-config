if vim.fn.has("termguicolors") == 1 then
    vim.o.termguicolors = true
end

--  Theme
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.backup = false
vim.o.writebackup = false

vim.o.number = true
vim.o.showmatch = true
vim.o.ignorecase = true

--  number of columns occupied by a tab 
vim.o.tabstop = 3

--  see multiple spaces as tabstops so <BS> does the right thing
vim.o.softtabstop=3

--  converts tabs to white space
vim.o.expandtab = true

--  width for autoindents
vim.o.shiftwidth = 4

--  indent a new line the same amount as the line just typed
vim.o.autoindent = true

vim.o.mouse = 'a'
--  enable mouse click

-- filetype plugin on
vim.cmd('filetype plugin on')

--  highlight current cursorline
vim.o.cursorline = true

--  Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 5
