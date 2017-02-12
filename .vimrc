" PLUGIN MANAGER --
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ap/vim-buftabline'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ap/vim-css-color'

call vundle#end()

" BASIC CONFIG
syntax on
set number
set mouse=a
set hlsearch
set sw=2 ts=2 st=2
set autoindent
set smarttab
let mapleader="&"

" COLOR SCHEME
let g:neodark#background='brown'
colorscheme neodark

" NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" DEVICONS
set encoding=utf-8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h12
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" BUFFER NAVIGATION
set hidden
nmap <leader>n :bnext<CR>
nmap <leader>p :bprevious<CR>
nmap <leader>D :bdelete<CR>
nmap <leader>bq :bp <BAR> bd #<CR>

