" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" autocompleter
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" git
Plug 'tpope/vim-fugitive'

" status line
Plug 'vim-airline/vim-airline'

" commenter
Plug 'scrooloose/nerdcommenter'

" auto pairs
Plug 'jiangmiao/auto-pairs'

" colorschemes
Plug 'sjl/badwolf'
Plug 'sickill/vim-monokai'

call plug#end()

colorscheme monokai
syntax on

set encoding=utf-8
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set splitright
set splitbelow

" Key maps
let mapleader=","
nnoremap <Leader>n :Vex<CR>
nnoremap <Leader>e :Files<CR>
nnoremap <Leader><C-f> :Ag <C-r><C-w><CR>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

inoremap <C-w> <C-o>diw
vnoremap " c"<C-r>""<Esc>
vnoremap ' c'<C-r>"'<Esc>
vnoremap ( c(<C-r>")<Esc>

nnoremap YY "+yy
vnoremap Y "+y
nnoremap Yiw "+yiw
nnoremap <Leader>P "+P
nnoremap <Leader>p "+p

" netrw configurations
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_altv = 1

