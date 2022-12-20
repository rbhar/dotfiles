" Download and install vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Run PlugInstall if missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
call plug#end()

" Options
set nocompatible
set encoding=utf8
set number
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set clipboard+=unnamedplus
set hidden
set hlsearch
set ignorecase
set incsearch
set linebreak
set list listchars=tab:»·,trail:·
set modelines=0
set mouse=a
set nofoldenable
set nomodeline
set noshowmode
set ruler
set scrolloff=8
set showcmd
set showmatch
set smartcase
set ttyfast
set wildmenu
set wrap

if (has("termguicolors"))
  set termguicolors
endif

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set relativenumber
set numberwidth=1
hi LineNr cterm=None ctermbg=None ctermfg=DarkGray

set cursorline
hi CursorLine cterm=None ctermbg=Black ctermfg=None
hi CursorLineNr ctermbg=Black ctermfg=None

set laststatus=2
hi statusline cterm=None ctermfg=Cyan

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Syntax
filetype indent plugin on
syntax on

" Colors
set t_Co=256

try
  colorscheme slate
catch
endtry

" Lightline
let g:lightline = {
  \ 'colorscheme': 'powerline',
  \ 'active': {
  \   'left':  [ [ 'mode', 'paste' ],
  \              [ 'filename', 'modified' ] ],
  \   'right': [ [ 'filetype' ],
  \              [ 'gitbranch', 'readonly' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

let g:lightline.mode_map = {
  \ 'n' : 'N',
  \ 'i' : 'I',
  \ 'R' : 'R',
  \ 'v' : 'V',
  \ 'V' : 'V-LINE',
  \ "\<C-v>": 'V-BLOCK',
  \ 'c' : 'C',
  \ 's' : 'S',
  \ 'S' : 'S-LINE',
  \ "\<C-s>": 'S-BLOCK',
  \ 't': 'T',
  \ }

" Mappings
noremap <space> :

let mapleader = " "
let g:mapleader = " "

nmap <leader>b :b<space>
nmap <leader>e :edit<space>
nmap <leader>f :find<space>
nmap <leader>q :q<cr>
nmap <leader>s :%s/
nmap <leader>v :vs<cr>
nmap <leader>w :w!<cr>

inoremap jk <Esc>
inoremap kj <Esc>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=0
let g:netrw_altv=1
let g:netrw_winsize=20
