set nocompatible
filetype plugin on
syntax on
let mapleader = ','
set hlsearch
"set insearch
 
set bg=light
 
" some basics
set autoindent
set fileformat=unix
set encoding=utf-8
set number 


" Specify the location for Vim-plug              
call plug#begin('~/.config/nvim/plugged')

" Add Vimwiki plugin
Plug 'vimwiki/vimwiki'

" End Vim-plug
call plug#end()

"autocmd VimEnter * VimwikiIndex
