local status_ok = pcall(require, "toggleterm")
if not status_ok then
	return
end

local Terminal = require("toggleterm.terminal").Terminal

function CompileAndRunFloatCpp()
	-- 	return vim.api.nvim_exec(
	-- 		[[
	--   " expand('%') uses for get full path file
	--   " echo like return
	--   echo printf("g++ %s %s %s", expand('%:d'), "&& ./a.out", "&& rm -f ./a.out")
	-- ]],
	-- 		true
	-- 	)

	-- vim.fn to change from lua to vimscript
	return vim.fn.printf("g++ %s %s %s", vim.fn.expand("%:p"), "&& ./a.out", "&& rm -f ./a.out")
end

function CompileAndRunWithArgvs(input)
	return vim.fn.printf("g++ %s && ./a.out %s && rm -f ./a.out", vim.fn.expand("%:p"), input)
end

function _CPP_COMPILE_TOGGLE()
	Terminal
		:new({
			cmd = CompileAndRunFloatCpp(),
			direction = "float",
		})
		:toggle()
end

function _CPP_COMPILE_WITH_ARGV_TOGGLE()
	local num_of_argvs = vim.fn.input("Enter number of arguments to compile cpp: ")

	if tonumber(num_of_argvs) < 0 then
		print("Errors occur when you enter input!!")
	end

	local inputList = ""
	for i = 1, tonumber(num_of_argvs), 1 do
		inputList = inputList .. vim.fn.input("Enter value for argv[" .. i .. "]: ")
		if i ~= tonumber(num_of_argvs) then
			inputList = inputList .. " "
		end
	end

	Terminal
		:new({
			cmd = CompileAndRunWithArgvs(inputList),
			direction = "float",
		})
		:toggle()
end
