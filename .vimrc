execute pathogen#infect()

set nocompatible
set number
set showcmd
set linebreak
set showbreak=→\ 

filetype plugin indent on
syntax on

set textwidth=80
set autoindent
set smartindent

set expandtab

set tabstop=2
set shiftwidth=2

set hlsearch
set incsearch

" Colore les espaces insécables
highlight NbSp ctermbg=darkgray guibg=lightred
match NbSp /\%xa0/
set listchars=nbsp:░
set list

cnoremap q  cq
cnoremap q! cq

set formatprg=par\ 80j
