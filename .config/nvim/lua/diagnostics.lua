vim.diagnostic.config({
    virtual_text = true,      -- show inline errors
    signs = true,             -- gutter icons
    underline = true,         -- underline errors
    update_in_insert = false, -- don’t spam while typing
    severity_sort = true,
})
