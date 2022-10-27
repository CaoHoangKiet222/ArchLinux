local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Goto buffer in position...
keymap("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)

-- Split buffer
keymap("n", "<leader>\\", ":vsplit<CR>", opts)
keymap("n", "<leader>/", ":split<CR>", opts)

-- Autoformat
keymap("n", "<C-f>", ":lua vim.lsp.buf.format()<CR>", opts)

-- Don't allow to use up down left right
keymap("n", "<Up>", ":echo 'Use k'<CR>", opts)
keymap("n", "<Down>", ":echo 'Use j'<CR>", opts)
keymap("n", "<Left>", ":echo 'Use h'<CR>", opts)
keymap("n", "<Right>", ":echo 'Use l'<CR>", opts)

-- Use atl + shift + hjkl to resize windows
keymap("n", "<A-S-j>", ":resize +2<CR>", opts)
keymap("n", "<A-S-k>", ":resize -2<CR>", opts)
keymap("n", "<A-S-h>", ":vertical resize +2<CR>", opts)
keymap("n", "<A-S-l>", ":vertical resize -2<CR>", opts)

-- Rotate 2 buffers
keymap("n", "<A-o>", "<C-w>r", opts)

-- Autoload theme for neovim
keymap("n", "<C-s>", "<Cmd>source ~/.config/nvim/lua/dogboy/colorscheme.lua<CR>", opts)

-- Folding command
keymap("n", "fa", "zA", opts)
keymap("n", "fc", "zM", opts)
keymap("n", "fo", "zR", opts)
