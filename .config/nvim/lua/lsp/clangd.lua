local capabilities = require("lsp.capabilities").get()  -- for completion

vim.lsp.config("clangd", {
    cmd = { "clangd", "--background-index" }, -- optional extra args
    capabilities = capabilities,
})

vim.lsp.enable("clangd")

