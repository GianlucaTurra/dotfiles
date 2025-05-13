return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                ["htmldjango"] = { "djlint" },
            },
        },
    },
    require("luasnip").filetype_extend("python", { "django" }),
    require("luasnip").filetype_extend("htmldjango", { "djangohtml", "html" }),
}
