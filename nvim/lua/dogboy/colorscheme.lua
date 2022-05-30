vim.opt.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[
try
  " dracula
  " darkplus
  " gruvbox
  " Cyberpunk-Neon
  colorscheme dracula
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
