require("blink.cmp").setup({
keymap = {
    ["<Tab>"] = {
        "select_next",
        "fallback",
    },

    ["<S-Tab>"] = {
        "select_prev",
        "fallback",
    },

    ["<CR>"] = {
        "accept",
        "fallback",
    },

    ["<C-Space>"] = {
        "show",
        "show_documentation",
        "hide_documentation",
    },

    ["<Esc>"] = {
        "hide",
        "fallback",
    },
},




    appearance = {
        nerd_font_variant = "mono",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
            window = {
                border = "rounded",
            },
        },
    },

    signature = {
        enabled = true,
    },

    sources = {
        default = {
            "lsp",
            "path",
            "snippets",
            "buffer",
        },
    },

})
