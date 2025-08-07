return {
    require("dap-go").setup({
        dap_configurations = {
            {
                type = "go",
                name = "Attach remote",
                mode = "remote",
                request = "attach",
                port = 43000,
                host = "127.0.0.1",
            },
        },
    }),
}
