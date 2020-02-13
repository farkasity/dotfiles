set nocompatible

syntax on

set shortmess=aoOtI
set ruler
set number
set relativenumber

set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set splitright
set splitbelow

set smartindent
set autoindent
set cindent

set hlsearch
set incsearch
set smartcase

set autoread
set showmatch
set pastetoggle=<F5>

set iskeyword-=.
set iskeyword-=#
set iskeyword-=-

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk

let mapleader = ','

autocmd FileType ruby,eruby,yml,html,css,scss,sass setlocal shiftwidth=2 softtabstop=2
