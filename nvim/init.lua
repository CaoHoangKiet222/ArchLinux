require("dogboy.settings")
require("dogboy.keymaps")
require("dogboy.plugins")
require("dogboy.colorscheme")
require("dogboy.cmp")
require("dogboy.lsp")
require("dogboy.telescope")
require("dogboy.treesitter")
require("dogboy.autopairs")
require("dogboy.comment")
require("dogboy.gitsigns")
-- require("dogboy.nvim-tree")
require("dogboy.neo-tree")
require("dogboy.bufferline")
require("dogboy.lualine")
require("dogboy.toggleterm")
require("dogboy.project")
require("dogboy.impatient")
require("dogboy.indentline")
require("dogboy.alpha")
require("dogboy.whichkey")
require("dogboy.autocommands")
require("dogboy.colorizer")
require("dogboy.emmet")
require("dogboy.autotag")
require("dogboy.notify")
--[[ require("dogboy.winbar") ]]

-- Complie
require("dogboy.compile")

--Session
require("dogboy.session")

--[[ if vim.fn.exists("g:vscode") ~= 0 then ]]
--[[ 	vim.cmd("source ~/.config/nvim/lua/dogboy/vscode/settings.vim") ]]
--[[ end ]]
