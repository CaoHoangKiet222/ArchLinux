local status_ok, winbar = pcall(require, "winbar")
if not status_ok then
	return
end

winbar.setup({
	enabled = true,
	show_file_path = true,
	show_symbols = true,
	colors = {
		path = "", -- You can customize colors like #c946fd
		file_name = "",
		symbols = "",
	},
	icons = {
		file_icon_default = "",
		seperator = ">",
		editor_state = "●",
		lock_icon = "",
	},
	--[[ icons = { ]]
	--[[   File = " ", ]]
	--[[   Module = " ", ]]
	--[[   Namespace = " ", ]]
	--[[   Package = " ", ]]
	--[[   Class = " ", ]]
	--[[   Method = " ", ]]
	--[[   Property = " ", ]]
	--[[   Field = " ", ]]
	--[[   Constructor = " ", ]]
	--[[   Enum = " ", ]]
	--[[   Interface = " ", ]]
	--[[   Function = " ", ]]
	--[[   Variable = " ", ]]
	--[[   Constant = " ", ]]
	--[[   String = " ", ]]
	--[[   Number = " ", ]]
	--[[   Boolean = " ", ]]
	--[[   Array = " ", ]]
	--[[   Object = " ", ]]
	--[[   Key = " ", ]]
	--[[   Null = " ", ]]
	--[[   EnumMember = " ", ]]
	--[[   Struct = " ", ]]
	--[[   Event = " ", ]]
	--[[   Operator = " ", ]]
	--[[   TypeParameter = " ", ]]
	--[[ }, ]]
	exclude_filetype = {
		"help",
		"startify",
		"dashboard",
		"packer",
		"neogitstatus",
		"NvimTree",
		"Trouble",
		"alpha",
		"lir",
		"Outline",
		"spectre_panel",
		"toggleterm",
		"qf",
	},
})
winbar.setup({
	disable_icons = false,
	disabled_filetype = {},
	separator = ">",
	-- limit for amount of context shown
	-- 0 means no limit
	-- Note: to make use of depth feature properly, make sure your separator isn't something that can appear
	-- in context names (eg: function names, class names, etc)
	depth = 0,
	-- indicator used when context hits depth limit
	depth_limit_indicator = "..",
	highlight = {
		component = "LineNr",
		separator = "LineNr",
	},
})
