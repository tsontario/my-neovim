" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'junegunn/fzf'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

lua require('nvim-tree-config')

