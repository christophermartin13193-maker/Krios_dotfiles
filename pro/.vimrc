call plug#begin()

"List of plugins
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'

call plug#end()

"let g:coc_node_path = '~/.nvm/versions/node/v24.19.0/bin/node'

syntax on
filetype plugin indent on

set number
set updatetime=300
set mouse=n
set showmatch
set ignorecase
set hlsearch
set incsearch
set foldmethod=indent
set wildmenu
set background=light

set tabstop=4
set shiftwidth=4
set softtabstop=4
