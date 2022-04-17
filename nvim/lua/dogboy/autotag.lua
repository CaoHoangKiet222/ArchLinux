local status_ok, autotag = pcall(require, "nvim-ts-autotag")
if not status_ok then
	return
end

local filetypes = {
	"html",
	"javascript",
	"typescript",
	"javascriptreact",
	"typescriptreact",
	"svelte",
	"vue",
	"tsx",
	"jsx",
	"rescript",
	"xml",
	"php",
	"markdown",
	"glimmer",
	"handlebars",
	"hbs",
}

autotag.setup({
	filetypes = filetypes,
})
