return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- You can alias plugin names
    use {'dracula/vim', as = 'dracula'}

    -- A dark and light Neovim theme written in Lua ported from the Visual Studio Code TokyoNight theme. 
    use {'folke/tokyonight.nvim'}

    -- Soothing pastel theme for (Neo)vim
    use { "catppuccin/nvim", as = "catppuccin" }

    -- True snippet and additional text editing support
    use {'neoclide/coc.nvim', branch = 'release'}


    -- A file explorer tree for neovim written in lua
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- a really handy start page with lots of customizations
    use {'mhinz/vim-startify'}

    -- fzf is a general-purpose command-line fuzzy finder.
    use { 'ibhagwan/fzf-lua' }

    -- browse the tags of the current file and get an overview of its structure
    use {'majutsushi/tagbar'}

    -- Vim plugin for intensely nerdy commenting powers
    -- use {'preservim/nerdcommenter'}
    use {'tpope/vim-commentary'}


    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })


    use {
        'chipsenkbeil/distant.nvim',
        config = function()
            require('distant').setup {
                -- Applies Chip's personal settings to every machine you connect to
                --
                -- 1. Ensures that distant servers terminate with no connections
                -- 2. Provides navigation bindings for remote directories
                -- 3. Provides keybinding to jump into a remote file's parent directory
                ['*'] = require('distant.settings').chip_default()
            }
        end
    }

    -- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    
    -- surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease
    use { 'tpope/vim-surround' }

    -- Plugin for calling lazygit from within neovim.
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })

    -- A neovim lua plugin to help easily manage multiple terminal windows
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
end)


