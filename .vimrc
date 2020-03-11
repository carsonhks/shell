" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off


" Load plugins here (pathogen or vundle)
" if running centos git 1.6.*, https for checking out git repos does not
" work. Use SSH url paths to PlugInstall and PlugUpdate if on CentOS work
" machine
call plug#begin('~/.vim/plugged')

Plug 'git@github.com:JuliaEditorSupport/julia-vim.git'
Plug 'git@github.com:junegunn/seoul256.vim.git'
Plug 'git@github.com:junegunn/vim-easy-align.git'
Plug 'git@github.com:preservim/nerdtree.git'

call plug#end()


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=0
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set diffopt+=iwhite

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
" use % to jump between pairs
set matchpairs+=<:> 
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> 

" TODO: remap the process of gf for verilog modules as gfv

" Copy/Paste always interface with system clipboard
set clipboard=unnamedplus

" Add a shortcut to toggle nerdtree on and off
map <C-n> :NERDTreeToggle<CR>

" Formatting
map <leader>q gqip

" Color scheme (terminal)
set t_Co=256
colo seoul256
set background=dark


