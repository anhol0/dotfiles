local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Themes
Plug('gruvbox-community/gruvbox')

-- Multicursor
-- Plug('mg979/vim-visual-multi', { branch = 'master' })

-- Completion
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

-- Git
Plug('tpope/vim-fugitive')

-- Icons & UI
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-mini/mini.icons')
Plug('MeanderingProgrammer/render-markdown.nvim')

-- LSP
Plug('neovim/nvim-lspconfig')

-- File Browser
-- Plug('nvim-tree/nvim-tree.lua')
-- Plug('nvim-tree/nvim-web-devicons')

vim.call('plug#end')

