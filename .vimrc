" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'

" status line
Plug 'vim-airline/vim-airline'

" commenter
Plug 'scrooloose/nerdcommenter'

" auto pairs
Plug 'jiangmiao/auto-pairs'

" colorschemes
Plug 'sickill/vim-monokai'

call plug#end()

colorscheme monokai
syntax on

set encoding=utf-8
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set splitright
set splitbelow
set noequalalways
set number
set cursorline
set belloff=all

" Key maps
let mapleader=","
nnoremap <Leader>n :Vex<CR>
nnoremap <Leader>e :Files<CR>
nnoremap <Leader><C-f> :Ag <C-r><C-w><CR>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

vnoremap " c"<C-r>""<Esc>
vnoremap ' c'<C-r>"'<Esc>
vnoremap ( c(<C-r>")<Esc>

nnoremap YY "+yy
vnoremap Y "+y
nnoremap Yiw "+yiw
nnoremap <Leader>P "+P
nnoremap <Leader>p "+p

inoremap {<Enter> {<CR><CR>}<Esc>kS
inoremap {<C-j> {<CR><CR>}<Esc>kS

" netrw configurations
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_altv = 1

" configurations for particular filetype
autocmd FileType html,css,javascript,typescript setlocal shiftwidth=2 tabstop=2
