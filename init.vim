lua require('user/map')
lua require('user/option')

if exists('g:vscode')
    " VSCode extension
else
    " ordinary Neovim
    
    " -------------- Load first
    lua require('env')

    lua require('plugins')

    lua require('user/packer')

    " -------------- Load next
    lua require('user/LazyGit')

    lua require("user/toggleterm")

    lua require("user/nvim-treesitter")

    lua require("user/nvim-tree")

    lua require('user/fzf-lua')

    lua require("user/theme")

    lua require("user/indent-blankline")

    lua require("user/TagbarToggle")

    lua require('user/lualine')

    lua require('user/vim-matchup')

    lua require('user/hop')

    lua require('user/fcitx-config')
    
    lua require('user/mini-align')
endif
