set nocompatible

" Bundles (vundles?)
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'beyondwords/vim-twig'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

" NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

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

" tab completion
set wildmenu
set wildmode=list:longest,full

set mouse=a
set ignorecase
set smartcase
set incsearch
set hlsearch
set nohidden

" Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Tabs
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

set cul
hi CursorLine term=none cterm=none ctermbg=0

set showmatch
set ruler
set history=1000

" split navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
