require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    -- highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
    matchup = {
        enable = true,              -- mandatory, false will disable the whole extension
        -- disable = { "c", "ruby" },  -- optional, list of language that will be disabled
        -- [options]
    },
}
