local json = vim.fn.json_decode(
    vim.fn.readfile(
        vim.fn.expand("~/.cache/dms/dms-colors.json")
    )
)

local colors = json.colors.dark


local highlights = {
    Normal = {
        fg = colors.on_surface,
        bg = colors.background,
    },

    NormalFloat = {
        fg = colors.on_surface,
        bg = colors.surface_container,
    },

    CursorLine = {
        bg = colors.surface_container,
    },

    LineNr = {
        fg = colors.outline,
    },

    CursorLineNr = {
        fg = colors.primary,
        bold = true,
    },

    Comment = {
        fg = colors.outline,
        italic = true,
    },

    String = {
        fg = colors.secondary,
    },

    Function = {
        fg = colors.primary,
    },

    Keyword = {
        fg = colors.tertiary,
    },

    Type = {
        fg = colors.primary,
    },

    DiagnosticError = {
        fg = colors.error,
    },

    DiagnosticWarn = {
        fg = colors.tertiary,
    },
}


for name, value in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, value)
end


local treesitter = {
    ["@comment"] = {
        fg = colors.outline,
        italic = true,
    },

    ["@string"] = {
        fg = colors.secondary,
    },

    ["@function"] = {
        fg = colors.primary,
    },

    ["@keyword"] = {
        fg = colors.tertiary,
    },

    ["@type"] = {
        fg = colors.primary,
    },
}


for name, value in pairs(treesitter) do
    vim.api.nvim_set_hl(0, name, value)
end
