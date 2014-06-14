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
Bundle 'kien/ctrlp.vim'

filetype plugin indent on

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/cache/*,*/log/*,*/vendor/*,*/media/*

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Line numbers
set number

" Remove any trailing whitespace
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set showcmd

" Folding stuffs
set foldmethod=marker
set autoindent

" Syntax hilite
filetype on
filetype plugin on
syntax enable

" Solarized colorscheme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set grepprg=grep\ -nH\ $*

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4

" Tab completion
set wildmenu
set wildmode=list:longest,full

" Set mouse=a // do not use mouse anymore!!
set ignorecase
set smartcase
set incsearch
set hlsearch
set nohidden

" Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Tab navigation // conflicts with OS X's desktop navigation
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" Highlight cursor line
set cul
hi CursorLine term=none cterm=none ctermbg=0

set showmatch
set ruler
set history=1000

" Split navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
