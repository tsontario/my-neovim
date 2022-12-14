" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'petertriho/nvim-scrollbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'jparise/vim-graphql'
Plug 'tveskag/nvim-blame-line'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Simple Lua setups
lua require("scrollbar").setup()
lua require('gitsigns').setup()
lua require('coc-config')
lua require("bufferline-config")
lua require('telescope-config')
lua require('lualine').setup()
" Source additional .vim files
let home = expand('~')
exec 'source' home . '/.config/nvim/vim_files/surround.vim'

" Theme
syntax enable
set background=dark
colorscheme tokyonight
set cursorline
highlight CursorLine guibg=#333953

" Sensible defaults
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set colour columns for good coding style
set tw=120                  " Word wrap at 120th column
filetype plugin indent on   " allows auto-indenting depending on file type
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " convert tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set mouse=a
set tabstop=2
set shiftwidth=2
let NERDTreeShowHidden=1

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Autocommands
autocmd FocusLost * silent! wa

" Allow system clipboard
set clipboard+=unnamedplus

" Remaps
let mapleader=','
nmap <leader>z :u<CR>
nmap <leader>Q :qa!<CR>
nmap <leader>q :bw<CR>
nmap <leader>. :NERDTreeFind<CR>
vnoremap <leader>jf :!jq .<CR>

" Unmaps of preexisting commands
nnoremap J <Nop>

" Faster navigation with arrows
nnoremap <C-k> 5k
nnoremap <C-j> 5j

" NERDTree remaps
nnoremap <leader>/ :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
imap jj <Esc>

" Telescope remaps
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fo <cmd>lua require'telescope.builtin'.oldfiles{}<CR>

" Buffer navigation remaps
" toggle buffer (switch between current and last buffer)
nnoremap <silent> <leader>bb <C-^>
" go to next buffer
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <C-l> :bn<CR>
" go to previous buffer
nnoremap <silent> <leader>bp :bp<CR>
" https://github.com/neovim/neovim/issues/2048
nnoremap <C-h> :bp<CR>
" close buffer
nnoremap <silent> <leader>bd :bd<CR>
" kill buffer
nnoremap <silent> <leader>bk :bd!<CR>
" list buffers
nnoremap <silent> <leader>bl :ls<CR>
" list and select buffer
nnoremap <silent> <leader>bg :ls<CR>:buffer<Space>
" horizontal split with new buffer
nnoremap <silent> <leader>bh :new<CR>
" vertical split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>

" FZF git branch select
let g:fzf_checkout_git_options = '--sort=-committerdate'
noremap <leader>gb :GBranches checkout --locals<CR>
nnoremap <leader>gg :ToggleBlameLine<CR>
