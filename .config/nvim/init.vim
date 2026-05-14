" Global config
set number
set cursorline
set cursorcolumn
set tabstop=4
set shiftwidth=4
set expandtab

" Plugin config
lua require("plugins")
lua require("keymaps")
lua require("lsp")
lua require("cmp_cfg")
lua require("ui")
lua require("diagnostics")
" lua require("nvim-tree-cfg")

colorscheme gruvbox
set background=dark

