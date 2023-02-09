local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

-- https://github.com/lighttiger2505/sqls
-- https://github.com/nanotee/sqls.nvim

lspconfig.sqls.setup({
	on_attach = function(client, bufnr)
		require("dogboy.lsp.handlers").on_attach(client, bufnr)
		require("sqls").on_attach(client, bufnr)
	end,
	capabilities = require("dogboy.lsp.handlers").capabilities,
	settings = {
		sqls = {
			connections = {
				{
					driver = "mysql",
					dataSourceName = "root:Kiet.caohoang2002@tcp(127.0.0.1:3306)/java_hibernate",
				},
				{
					driver = "mysql",
					dataSourceName = "springstudent:springstudent@tcp(127.0.0.1:3306)/web_customer_tracker",
				},
			},
		},
	},
})
