vim.opt.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode
vim.g.tokyonight_transparent_sidebar = true
vim.opt.background = "dark"

vim.cmd([[
try
  " dracula
  " darkplus
  " gruvbox
  " Cyberpunk-Neon
  " tokyonight
  colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
