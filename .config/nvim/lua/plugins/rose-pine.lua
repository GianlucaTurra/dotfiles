return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            enable = {
                terminal = true,
            },
            styles = {
                transparency = true,
            },
        })
        vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
        vim.api.nvim_set_hl(0, "PmenuSel", { bg = "none" })
        vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "CmpDocumentation", { bg = "none" })
        vim.cmd("colorscheme rose-pine")
    end,
}
