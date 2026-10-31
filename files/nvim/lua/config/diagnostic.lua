vim.diagnostic.config({
    virtual_text = {
        spacing = 4,
        prefix = "●",
    },

    signs = true,

    underline = true,

    update_in_insert = false,

    severity_sort = true,

    float = {
        border = "rounded",
        source = "always",
    },
})


local signs = {
    [vim.diagnostic.severity.ERROR] = "",
    [vim.diagnostic.severity.WARN] = "",
    [vim.diagnostic.severity.INFO] = "",
    [vim.diagnostic.severity.HINT] = "󰌵",
}


for severity, icon in pairs(signs) do
    vim.fn.sign_define(
        "DiagnosticSign" .. severity,
        {
            text = icon,
            texthl = "DiagnosticSign" .. severity,
        }
    )
end
