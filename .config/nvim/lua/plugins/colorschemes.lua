return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            flavour = "macchiato",
            transparent_background = true,
        },
    },
    {
        "catppuccin/nvim",
        opts = function(_, opts)
            local module = require("catppuccin.groups.integrations.bufferline")
            if module then
                module.get = module.get_theme
            end
            return opts
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
}
