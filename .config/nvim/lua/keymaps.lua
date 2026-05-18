local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Tabs
-- map("n", "<leader>to", ":tabnew<CR>", opts)
-- map("n", "<leader>tp", ":tabprev<CR>", opts)
-- map("n", "<leader>tn", ":tabnext<CR>", opts)
-- map("n", "<leader>tc", ":tabclose<CR>", opts)

map("n", "<C-N>", ":NvimTreeToggle<CR>", opts)
-- Move tab left/right
map('n', 'ml', ':tabmove -1<CR>', opts)
map('n', 'mr', ':tabmove +1<CR>', opts)

map("n", "<C-S-v>", '"+p', opts)
map("n", "<C-S-c>", '"+y', opts)
map("n", "<C-S-c>", '"+yy', opts)
map("i", "<C-S-v>", '<Esc>+p', opts)
map("i", "<C-S-c>", '<Esc>"+y', opts)
map("v", "<C-S-v>", '"+p', opts)
map("v", "<C-S-c>", '"+y', opts)
map("t", "<Esc>", '<C-\\><C-n>', opts)
map("t", "<C-S-v>", '"+p', opts)
map("t", "<C-S-c>", '"+y', opts)
map("n", "<C-L>", ':tabnext<CR>', opts)
map("n", "<C-H>", ':tabprevious<CR>', opts)
map("n", "<C-PageDown>", '<C-\\><C-n>:tabnext<CR>', opts)
map("n", "<C-PageUp>", '<C-\\><C-n>:tabprevious<CR>', opts)
-- Shifting left/right stays in visual mode
map("v", "<", "<gv", { desc = "Shift left and keep selection" })
map("v", ">", ">gv", { desc = "Shift right and keep selection" })

-- Move tab to specific position with m<number>
for i = 1, 9 do
    map('n', 'm' .. i, ':tabmove ' .. (i - 1) .. '<CR>', opts)
end
