require("conform").setup({
    formatters_by_ft = {
        python = {
            "ruff_format",
        },

        nix = {
            "alejandra",
        },

        lua = {
            "stylua",
        },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})
