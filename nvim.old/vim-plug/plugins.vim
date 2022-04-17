" #################################################################################
"
" ██████  ██      ██    ██  ██████   ██████  ██ ███    ██    ██    ██ ██ ███    ███ 
" ██   ██ ██      ██    ██ ██       ██       ██ ████   ██    ██    ██ ██ ████  ████ 
" ██████  ██      ██    ██ ██   ███ ██   ███ ██ ██ ██  ██    ██    ██ ██ ██ ████ ██ 
" ██      ██      ██    ██ ██    ██ ██    ██ ██ ██  ██ ██     ██  ██  ██ ██  ██  ██ 
" ██      ███████  ██████   ██████   ██████  ██ ██   ████ ██   ████   ██ ██      ██ 
"
" #################################################################################
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
    Plug 'sheerun/vim-polyglot'

" File Explorer
    Plug 'scrooloose/NERDTree'

" Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

" Themes
    " Plug 'joshdick/onedark.vim' 

" Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Project Management with Startify
    Plug 'mhinz/vim-startify'

" Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin Airline and Airline themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jmcantrell/vim-virtualenv'
    "Plug 'lambdalisue/battery.vim'
    "Plug 'itchyny/lightline.vim'
    
" Floaterm
    Plug 'voldikss/vim-floaterm' 

" Add icon to your plugins
    Plug 'ryanoasis/vim-devicons'

" Plug FZF & vim-rooter into vim
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

" Vimspector
    Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'

" Install colorizer
    Plug 'norcalli/nvim-colorizer.lua'

" Rainbow
    Plug 'junegunn/rainbow_parentheses.vim'

" Barbar
    Plug 'romgrk/barbar.nvim'
    
" Bufferline
    Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
    Plug 'akinsho/bufferline.nvim'

" Commentary
    Plug 'tpope/vim-commentary'    
    if exists('g:vscode')
        Plug 'asvetliakov/vim-easymotion'
    endif

" Keybindings
    Plug 'liuchengxu/vim-which-key'
    " Git
    " Plug 'mhinz/vim-signify'
    " Plug 'tpope/vim-fugitive'
    " Plug 'tpope/vim-rhubarb'
    " Plug 'junegunn/gv.vim'
    
" Latex
    " Plug 'lervag/vimtex'
    " Plug 'Konfekt/FastFold'
    " Plug 'matze/vim-tex-fold'

" TreeSitter
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
    " Plug 'nvim-treesitter/nvim-treesitter-textobjects'
" Using Vim-Plug:
    Plug 'Mofiqul/dracula.nvim'

" Live edit html, css, and javascript in vim
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

" Auto close tag
    Plug 'alvan/vim-closetag'

" Auto rename tag
    Plug 'AndrewRadev/tagalong.vim'

" Indent line
    Plug 'Yggdroot/indentLine'
" Snippets
    Plug 'honza/vim-snippets'

" Lsp plugin
    " Plug 'neovim/nvim-lspconfig'    
    " Plug 'glepnir/lspsaga.nvim'
    " Plug 'williamboman/nvim-lsp-installer'
    " Plug 'hrsh7th/nvim-cmp'
" React JSX
    " Plug 'mxw/vim-jsx'
    " Plug 'pangloss/vim-javascript'
    " Plug 'w0rp/ale'
    Plug 'mattn/emmet-vim'
" Database
    Plug 'dinhhuy258/vim-database', {'branch': 'master', 'do': ':UpdateRemotePlugins'}
call plug#end()
