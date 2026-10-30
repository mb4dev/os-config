require("neo-tree").setup({
    close_if_last_window = true,

    sources = {
        "filesystem",
        "buffers",
        "git_status",
    },

    filesystem = {
        follow_current_file = {
            enabled = true,
        },

        use_libuv_file_watcher = true,

        filtered_items = {
            visible = true,
            hide_dotfiles = false,
        },
    },

    window = {
        width = 35,

        mappings = {
            ["l"] = "open",
            ["h"] = "close_node",
        },
    },

    default_component_configs = {
        indent = {
            with_expanders = true,
        },

        git_status = {
            symbols = {
                added = "+",
                modified = "~",
                deleted = "-",
            },
        },
    },
})
