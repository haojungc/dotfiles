" Key maps
nnoremap j gj
nnoremap k gk
inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>i

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ycm configurations
let g:ycm_enable_diagnostic_signs = 0
set completeopt-=preview

set encoding=utf-8
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable

" netrw configurations
let g:netrw_banner = 0
let g:netrw_winsize = 25
