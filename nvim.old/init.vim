" ####################################################
"
" ██ ███ ██ ██ ████████ ██ ██ ██ ███ ███
" ██ ████ ██ ██ ██ ██ ██ ██ ████ ████
" ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ████ ██
" ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██
" ██ ██ ████ ██ ██ ██ ████ ██ ██ ██
"
" ####################################################

source $HOME/.config/nvim.old/vim-plug/plugins.vim
source $HOME/.config/nvim.old/general/settings.vim
source $HOME/.config/nvim.old/keys/mappings.vim
" source $HOME/.config/nvim.old/themes/onedark.vim
source $HOME/.config/nvim.old/themes/treesitter.vim
source $HOME/.config/nvim.old/plug-config/rnvimr.vim
source $HOME/.config/nvim.old/plug-config/start-screen.vim
source $HOME/.config/nvim.old/plug-config/coc.vim
source $HOME/.config/nvim.old/themes/airline.vim
source $HOME/.config/nvim.old/plug-config/floaterm.vim
" source $HOME/.config/vimspector/vimspector.vim
lua require'plug-colorizer'
source $HOME/.config/nvim.old/plug-config/rainbow.vim
source $HOME/.config/nvim.old/plug-config/fzf.vim
source $HOME/.config/nvim.old/plug-config/bufferline.vim
source $HOME/.config/nvim.old/plug-config/commentary.vim
source $HOME/.config/nvim.old/keys/which-key.vim
source $HOME/.config/nvim.old/plug-config/signify.vim
source $HOME/.config/nvim.old/compile/compile-cpp.vim
source $HOME/.config/nvim.old/compile/live-server.vim
source $HOME/.config/nvim.old/compile/mysql.vim
source $HOME/.config/nvim.old/plug-config/indentline.vim
source $HOME/.config/nvim.old/snips/snippets.vim
" luafile $HOME/.config/nvim.old/lsp-config/compe-config.lua
" source $HOME/.config/nvim.old/lsp-config/lsp-config.vim
" luafile $HOME/.config/nvim.old/lsp-config/compe-config.lua
" luafile $HOME/.config/nvim.old/lsp-config/ls-kind.lua
"lua require'bufferline'

" Tranparent background
hi! Normal ctermbg=NONE guibg=NONE

if exists('g:vscode')
source $HOME/.config/nvim.old/lv-vscode/settings.vim
" source $HOME/.config/nvim.old/plug-config/easymotion.vim
endif

" Setup Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile
