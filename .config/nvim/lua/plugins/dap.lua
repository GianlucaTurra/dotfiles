return {
    "mfussenegger/nvim-dap",
    -- stylua: ignore
    keys = {
        { "<F11>", function() require("dap").step_into() end, desc = "Step Into" },
        { "<S-F11>", function() require("dap").step_out() end, desc = "Step Out" },
        { "<F10>", function() require("dap").step_over() end, desc = "Step Over" },
    },
}
