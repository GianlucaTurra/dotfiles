return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                ["django-html"] = { "djlint" },
            },
        },
    },
    require("luasnip").filetype_extend("python", { "django" }),
    require("luasnip").filetype_extend("django-html", { "djangohtml", "html" }),
}
