return {
  {
    "windwp/nvim-ts-autotag",
    -- opts = {
    --   enable_close = true,
    --   enable_rename = true,
    --   enable_close_on_slash = false,
    -- },
    -- per_filetype = {
    --   ["html"] = { enable_close = false },
    -- },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        html = { filetypes = { "html", "vue" } },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "html",
      })
    end,
  },
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
