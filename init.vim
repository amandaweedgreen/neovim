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
Plug 'iruzo/matrix-nvim'
Plug 'preservim/nerdtree'

" End Vim-plug
call plug#end()

"autocmd VimEnter * VimwikiIndex
"
"" Vimwiki configuration
let g:vimwiki_list = [{
    \ 'path': '~/Documents/vimwiki/',
    \ 'syntax': 'markdown',
    \ 'ext': '.md'
    \ }]

command! VimwikiStart :edit ~/Documents/vimwiki/index.md
autocmd BufRead,BufNewFile index.md if expand("%:p:h") ==# expand("~/.config/nvim") | edit ~/Documents/vimwiki/index.md | endif

" Example config in Vim-Script
"let g:matrix_contrast = v:false
"let g:matrix_borders = v:false
"let g:matrix_disable_background = v:false
"let g:matrix_italic = v:false

" Load the colorscheme
"colorscheme matrix
