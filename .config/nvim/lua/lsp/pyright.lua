-- lua/lsp/pyright.lua
local capabilities = require("lsp.capabilities").get()

vim.lsp.config("pyright", {
    capabilities = capabilities,
})

vim.lsp.enable("pyright")

