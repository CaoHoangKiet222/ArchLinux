local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

--[[ require("dogboy.lsp.lsp-installer") ]]
require("dogboy.lsp.handlers").setup()
require("dogboy.lsp.mason")
require("dogboy.lsp.null-ls")
require("dogboy.lsp.nvim-lspconfig")
