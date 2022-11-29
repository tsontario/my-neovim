" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'petertriho/nvim-scrollbar'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Simple Lua setups
lua require("scrollbar").setup()
lua require('gitsigns').setup()

" Theme
syntax enable
set background=dark
colorscheme tokyonight

" Sensible defaults
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                   " set colour columns for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " convert tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set mouse=a
set tabstop=2
set shiftwidth=2

" Rempaps
let mapleader=','
nmap <leader>z :u<CR>
nmap <leader>Q :qa!<CR>
nmap <leader>q :bw<CR>

" NERDTree remaps
nnoremap <leader>/ :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
imap jj <Esc>

" Telescope remaps
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
