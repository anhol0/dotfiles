" Global config

set number

set cursorline
set cursorcolumn

set tabstop=4
set shiftwidth=4
set expandtab

" Shortcuts config

nnoremap <leader>to   :tabnew<CR>
nnoremap <leader>tp   :tabprev<CR>
nnoremap <leader>tn   :tabnext<CR>
nnoremap <leader>tc   :tabclose<CR>
" Plugin config

call plug#begin()

Plug 'gruvbox-community/gruvbox'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'tpope/vim-fugitive'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-mini/mini.icons'
Plug 'MeanderingProgrammer/render-markdown.nvim'

call plug#end()

lua << EOF

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

vim.lsp.config("clangd", {
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_markers = { "compile_commands.json", ".git", ".clangd" },
})

vim.diagnostic.config({
  virtual_text = true,    -- show inline errors/warnings
  signs = true,           -- show signs in gutter
  underline = true,       -- underline problem code
  update_in_insert = false,
  severity_sort = true,
})

vim.lsp.enable("clangd")

local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- accept suggestion
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- accept suggestion
    ["<C-Space>"] = cmp.mapping.complete(),            -- trigger suggestions
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  },
})

EOF

colorscheme gruvbox
set background=dark
