local status_ok = pcall(require, "toggleterm")
if not status_ok then
	return
end

local Terminal = require("toggleterm.terminal").Terminal

function CompileAndRunFloat()
	-- 	return vim.api.nvim_exec(
	-- 		[[
	--   " expand('%') uses for get full path file
	--   " echo like return
	--   echo printf("g++ -std=c++11 %s %s %s", expand('%'), "&& ./a.out", "&& rm -f ./a.out")
	-- ]],
	-- 		true
	-- 	)

	-- vim.fn to change from lua to vimscript
	return vim.fn.printf("g++ -std=c++11 %s %s %s", vim.fn.expand("%"), "&& ./a.out", "&& rm -f ./a.out")
end

function CompileAndRunWithArgvs(input)
	return vim.fn.printf("g++ -std=c++11 %s && ./a.out %s && rm -f ./a.out", vim.fn.expand("%"), input)
end

function _CPP_COMPILE_TOGGLE()
	Terminal
		:new({
			cmd = CompileAndRunFloat(),
			direction = "float",
		})
		:toggle()
end

function _CPP_COMPILE_WITH_ARGV_TOGGLE()
	local num_of_argvs = vim.fn.input("Enter number of arguments to compile cpp: ")
	local inputList = ""

	for i = 1, tonumber(num_of_argvs), 1 do
		local input = vim.fn.input("Enter value for argv[" .. i .. "]: ")
		inputList = inputList .. input
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
--
-- vim.api.nvim_set_keymap("n", "<F1>", "<cmd>lua _CPP_COMPILE_TOGGLE()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<F2>", "<cmd>lua _CPP_COMPILE_WITH_ARGV_TOGGLE()<CR>", { noremap = true, silent = true })
