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

function CompileAndRunFloat()
	-- java cannot compile with full path
	return vim.fn.printf(
		"javac -d %s/bin %s/*.java && java -cp %s/bin %s && rm -rf %s/bin",
		GetPWD(),
		GetPWD(),
		GetPWD(),
		GetClassJavac(),
		GetPWD()
	)
end

function CompileAndRunWithPackageFloat()
	local package = '`grep "package" ' .. vim.fn.expand("%:p") .. " | awk '{print $2}' | sed \"s/;//\"`"
	return vim.fn.printf(
		"javac -d %s/bin %s/*.java && java -cp %s/bin %s && rm -rf %s/bin",
		GetPWD(),
		GetPWD(),
		GetPWD(),
		package .. "." .. GetClassJavac(),
		GetPWD()
	)
end

function _JAVA_RUN_WITH_PACKAGE_TOGGLE()
	Terminal
		:new({
			cmd = CompileAndRunWithPackageFloat(),
			direction = "float",
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
