local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then return end

toggleterm.setup({
  size = 20,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "float",
  close_on_exit = false,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    winblend = 20,
    highlights = {
      border = "curved",
      background = "Normal",
    },
  },
})

-- function _G.set_terminal_keymaps()
--   local opts = {noremap = true}
-- vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
-- end
--
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require("toggleterm.terminal").Terminal

function _LAZYGIT_TOGGLE()
  local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
  lazygit:toggle()
end

function _NODE_TOGGLE()
  local node = Terminal:new({ cmd = "node", hidden = true })
  node:toggle()
end

function _NCDU_TOGGLE()
  local ncdu = Terminal:new({ cmd = "ncdu", hidden = true })
  ncdu:toggle()
end

function _HTOP_TOGGLE()
  local htop = Terminal:new({ cmd = "htop", hidden = true })
  htop:toggle()
end

function _PYTHON_TOGGLE()
  local python = Terminal:new({
    cmd = vim.fn.printf("%s %s\n", "python3", vim.fn.expand("%:p")),
    direction = "float",
    hidden = true,
  })
  python:toggle()
end

-- Cpp compile
function CompileAndRunFloatCpp()
  return vim.fn.printf(
    "g++ %s %s %s",
    vim.fn.expand("%:p"),
    "&& ./a.out",
    "&& rm -f ./a.out"
  )
end

function CompileAndRunWithArgvs(input)
  return vim.fn.printf(
    "g++ %s && ./a.out %s && rm -f ./a.out",
    vim.fn.expand("%:p"),
    input
  )
end

function _CPP_COMPILE_TOGGLE()
  Terminal:new({
    cmd = CompileAndRunFloatCpp(),
    direction = "float",
  }):toggle()
end

function _CPP_COMPILE_WITH_ARGV_TOGGLE()
  local num_of_argvs =
      vim.fn.input("Enter number of arguments to compile cpp: ")

  if tonumber(num_of_argvs) < 0 then
    print("Errors occur when you enter input!!")
  end

  local inputList = ""
  for i = 1, tonumber(num_of_argvs), 1 do
    inputList = inputList .. vim.fn.input("Enter value for argv[" .. i .. "]: ")
    if i ~= tonumber(num_of_argvs) then inputList = inputList .. " " end
  end

  Terminal:new({
    cmd = CompileAndRunWithArgvs(inputList),
    direction = "float",
  }):toggle()
end

-- Java compile
function MySplit(inputstr, separator)
  if separator == nil then separator = "%s" end
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
    if index ~= #array_split then pwd = pwd .. value end
    if index < #array_split - 1 then pwd = pwd .. "/" end
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
  local package = '`grep "package" '
      .. vim.fn.expand("%:p")
      .. " | awk '{print $2}' | sed \"s/;//\"`"
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
  Terminal:new({
    cmd = CompileAndRunWithPackageFloat(),
    direction = "float",
  }):toggle()
end

function _JAVA_RUN_TOGGLE()
  Terminal:new({
    cmd = CompileAndRunFloat(),
    direction = "float",
  }):toggle()
end
