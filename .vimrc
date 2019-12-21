execute pathogen#infect()

set nocompatible
set number
set showcmd
set linebreak
set showbreak=→\ 

set textwidth=80

set autoindent
set smartindent
set expandtab

set tabstop=2
set shiftwidth=2

set hlsearch
set incsearch

set formatprg=par\ 80j\ p2

filetype plugin indent on
syntax on

" Colore les espaces insécables
highlight NbSp ctermbg=darkgray guibg=lightred
match NbSp /\%xa0/
set listchars=nbsp:░
set list

cnoremap q  cq
cnoremap q! cq
