set nocompatible
set shell=/usr/local/bin/zsh
set number
set cursorline
set hlsearch
set smartcase
set ignorecase
set expandtab
set autoindent
set smartindent
set relativenumber
set hidden
set textwidth=80
set clipboard=unnamed
set shiftwidth=2
set tabstop=2
set undofile
set undodir^=~/.vim/undo
set directory=/tmp,/var/tmp,.
set encoding=utf-8
set list listchars=tab:»·,trail:·
set grepprg=ag
set background=light

set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=\                            " single space
set statusline+=%f\                          " file name
set statusline+=[%{strlen(&ft)?&ft:'none'}]  " filetype
set statusline+=%h%m%r%w                     " flags
set statusline+=%=                           " right align
set statusline+=%P

let &colorcolumn=join(range(81,999),",")
let mapleader=","
let maplocalleader=","
