return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- A file explorer tree for neovim written in lua
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly'                    -- optional, updated every week. (see issue #1193)
    }

    -- a really handy start page with lots of customizations
    use { 'mhinz/vim-startify' }

    -- fzf is a general-purpose command-line fuzzy finder.
    use { 'ibhagwan/fzf-lua' }

    -- browse the tags of the current file and get an overview of its structure
    use { 'majutsushi/tagbar' }

    -- Vim plugin for intensely nerdy commenting powers
    -- use {'preservim/nerdcommenter'}
    use { 'tpope/vim-commentary' }


    -- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease
    use { 'tpope/vim-surround' }

    -- Plugin for calling lazygit from within neovim.
    -- use({
    --     "kdheepak/lazygit.nvim",
    --     -- optional for floating window border decoration
    --     requires = {
    --         "nvim-lua/plenary.nvim",
    --     },
    -- })

    -- A neovim lua plugin to help easily manage multiple terminal windows
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- Nvim Treesitter configurations and abstraction layer
    use {
        'nvim-treesitter/nvim-treesitter',

        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

     -- -- vim match-up: even better % 👊 navigate and highlight matching words 👊 modern matchit and matchparen. Supports both vim and neovim + tree-sitter.
    use {
        'andymass/vim-matchup',
        setup = function()
            -- may set any options here
            vim.g.matchup_matchparen_offscreen = { method = "popup" }
        end
    }

    -- Indent guides for Neovim 
    use "lukas-reineke/indent-blankline.nvim"

    -- Packer:
    use 'Mofiqul/vscode.nvim'
    -- packer
    -- use {
    --     "askfiy/visual_studio_code",
    --     -- config = function()
    --     --     vim.cmd([[colorscheme visual_studio_code]])
    --     -- end,
    -- }

    -- telecope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- hop.nvim
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

    -- fugitive.nvim
    use {
        'tpope/vim-fugitive'
    }

    -- use { 
    --     'alohaia/fcitx.nvim'
    -- }
    
    -- automatic switch input method from normal mode to insert mode
    use 'h-hg/fcitx.nvim'

    -- Align text interactively
    use 'echasnovski/mini.nvim'

    -- A small automated session manager for Neovim
    use 'rmagatti/auto-session'

    -- A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.
    use 'airblade/vim-gitgutter'
end)
