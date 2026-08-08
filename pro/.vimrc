" --- Ergonomie & Interface ---
syntax on
filetype plugin indent on
set number
set cursorline                  " Surligne la ligne courante
set scrolloff=8                 " Marge de 8 lignes lors du défilement
set background=light
set mouse=n
set wildmenu

" --- Gestion des espaces / Tabulations ---
set tabstop=4
set shiftwidth=4
set softtabstop=4

" --- Recherche ---
set ignorecase
set smartcase                   " Respecte la casse si une majuscule est tapée
set hlsearch
set incsearch

" --- Comportement & Productivité ---
set hidden                      " Change de fichier sans forcer la sauvegarde
set clipboard=unnamedplus       " Intégration du presse-papier système
set undofile                    " Garde l'historique d'annulation au redémarrage
set updatetime=300
set showmatch
set foldmethod=indent
