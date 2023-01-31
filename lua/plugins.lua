return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    -- use '9mm/vim-closer'

    -- Lazy loading:
    -- Load on specific commands
    -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

    -- Load on an autocommand event
    -- use {'andymass/vim-matchup', event = 'VimEnter'}

    -- Load on a combination of conditions: specific filetypes or commands
    -- Also run code after load (see the "config" key)
    -- use {
    -- 	'w0rp/ale',
    -- 	ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    -- 	cmd = 'ALEEnable',
    -- 	config = 'vim.cmd[[ALEEnable]]'
    -- }

    -- Plugins can have dependencies on other plugins
    -- use {
    -- 	'haorenW1025/completion-nvim',
    -- 	opt = true,
    -- 	requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
    -- }

    -- -- Plugins can also depend on rocks from luarocks.org:
    -- use {
    --	'my/supercoolplugin',
    --	rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
    --}

    -- You can specify rocks in isolation
    -- use_rocks 'penlight'
    -- -- use_rocks {'lua-resty-http', 'lpeg'}

    -- -- -- Local plugins can be included
    -- -- -- use '~/projects/personal/hover.nvim'

    -- -- -- Plugins can have post-install/update hooks
    -- -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}


    -- -- Post-install/update hook with call of vimscript function with argument
    -- -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

    -- -- -- use {
    -- -- 	'glepnir/galaxyline.nvim',
    -- -- 	branch = 'main',
    -- -- 	-- your statusline
    -- -- 	-- some optional icons
    -- 	requires = {'kyazdani42/nvim-web-devicons', opt = true}
    -- }
    -- Use dependency and run lua function after load
    -- use {
    -- 	'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    -- 	config = function() require('gitsigns').setup() end
    -- }

    -- You can specify multiple plugins in a single call
    -- use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

    -- You can alias plugin names
    use {'dracula/vim', as = 'dracula'}

    -- A dark and light Neovim theme written in Lua ported from the Visual Studio Code TokyoNight theme. 
    use {'folke/tokyonight.nvim'}

    -- Soothing pastel theme for (Neo)vim
    use { "catppuccin/nvim", as = "catppuccin" }

    -- True snippet and additional text editing support
    use {'neoclide/coc.nvim', branch = 'release'}

    -- snippets engine
    -- use {'SirVer/ultisnips'}

    -- a collection of snippets
    -- use {'honza/vim-snippets'}

    -- a file explorer for neovim(netrw comes as default for neovim)
    -- use {'scrooloose/nerdtree'}

    -- an easy way for commenting out lines
    -- use {'preservim/nerdcommenter'}
    --

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
    -- use {'junegunn/fzf'}
    -- use {'junegunn/fzf.vim'}
    use { 'ibhagwan/fzf-lua' }


    -- TypeScript Highlighting
    -- use {'leafgarland/typescript-vim'}
    -- use {'peitalin/vim-jsx-typescript'}

    -- browse the tags of the current file and get an overview of its structure
    use {'majutsushi/tagbar'}

    -- takes care of the much needed management of tags files in Vim.
    -- use {'ludovicchabant/vim-gutentags'}

    -- Vim plugin, insert or delete brackets, parens, quotes in pair
    -- use {'jiangmiao/auto-pairs'}

    -- Vim plugin for intensely nerdy commenting powers
    -- use {'preservim/nerdcommenter'}
    use {'tpope/vim-commentary'}

    -- autopairs for neovim written by lua
    -- use {
    --     "windwp/nvim-autopairs",
    --     config = function() require("nvim-autopairs").setup {} end
    -- }
end)


