local status_ok = pcall(require, "toggleterm")
if not status_ok then
	return
end

local Terminal = require("toggleterm.terminal").Terminal

function MySplit(inputstr, separator)
	if separator == nil then
		separator = "%s"
	end
	local t = {}
	for str in string.gmatch(inputstr, "([^" .. separator .. "]+)") do
		table.insert(t, str)
	end
	return t
end

function GetPWD()
	local array_split = MySplit(vim.fn.expand("%:p"), "/")
	local pwd = "/"
	for index, value in pairs(array_split) do
		if index ~= #array_split then
			pwd = pwd .. value
		end
		if index < #array_split - 1 then
			pwd = pwd .. "/"
		end
	end
	return pwd
end

function GetClassJavac()
	local array_split = MySplit(vim.fn.expand("%:p"), "/")
	return MySplit(array_split[#array_split], ".")[1]
end

function CompileAllFilesIntoClass()
	-- javac can compile with full path
	return vim.fn.printf(
		"javac -d ../bin %s/*.java && echo 'Compile all files.java into files.class done !!!(pwd: %s)'",
		GetPWD(),
		GetPWD()
	)
end

function CompileAndRunFloat()
	-- java cannot compile with full path
	-- need to create src folder
	return vim.fn.printf("javac -d ../bin %s/*.java && java -cp ../bin %s && rm -rf ../bin", GetPWD(), GetClassJavac())
end

function _JAVA_COMPILE_TOGGLE()
	Terminal
		:new({
			cmd = CompileAllFilesIntoClass(),
			direction = "float",
			on_exit = function()
				vim.cmd("w!")
			end,
		})
		:toggle()
end

function _JAVA_RUN_TOGGLE()
	Terminal
		:new({
			cmd = CompileAndRunFloat(),
			direction = "float",
		})
		:toggle()
end
