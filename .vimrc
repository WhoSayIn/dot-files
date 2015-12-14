set nocompatible
filetype off
set encoding=utf-8

" Bundles (vundles?)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'shawncplus/phpcomplete.vim'
    Plugin 'gmarik/vundle'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-repeat'
    Plugin 'beyondwords/vim-twig'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on

" NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeIgnore = ['\.pyc$']

" backspace issues
set backspace=2
" line numbers
set number

" remove any trailing whitespace
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set showcmd

" folding stuffs
set foldmethod=marker
set autoindent

" syntax hilite
filetype on
filetype plugin on
filetype plugin indent on
syntax enable

" solarized colorscheme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set grepprg=grep\ -nH\ $*

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4

" Unset the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

" tab completion
set wildmenu
set wildmode=list:longest,full

" set mouse=a // do not use mouse anymore!!
set ignorecase
set smartcase
set incsearch
set hlsearch
set nohidden

" Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Tabs //conflicts with mac os x's viewport navigation
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

set cul
hi CursorLine term=none cterm=none ctermbg=0

set showmatch
set ruler
set history=1000

" Map jj into esc (v on visual mode)
ino jj <esc>
cno jj <c-c>
vno v <esc>

" split navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
