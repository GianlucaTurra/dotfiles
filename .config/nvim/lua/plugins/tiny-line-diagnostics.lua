return {
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy",
        priority = 1000,
        opts = {
            options = {
                add_messages = {
                    display_count = true,
                },
                multilines = {
                    enabled = true,
                },
                show_source = {
                    enabled = true,
                },
                use_icons_from_diagnostic = true,
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = { diagnostics = { virtual_text = false } },
    },
}
