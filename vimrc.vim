" -- basics -- 
" Don't try to be vi compatible
set nocompatible
" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number relativenumber

" Show file stats
set ruler

" Clipboard support
set clipboard=unnamed

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Highlight any text over 80 column
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
" Whitespace
set wrap
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Python
au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix

let python_highlight_all=1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
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

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Enable by default:
set list "

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" -- end basics --


" -- plugins --
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'

" Add plugins here

" Autocompletion
Plugin 'ajh17/VimCompletesMe'

" Goyo
Plugin 'junegunn/goyo.vim'

" Syntax checking
Plugin 'scrooloose/syntastic'

" nerdtree
Plugin 'scrooloose/nerdtree'

" nerdtree tabs
Plugin 'jistr/vim-nerdtree-tabs'

" Git integration
Plugin 'tpope/vim-fugitive'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" PEP8 checking
Plugin 'nvie/vim-flake8'

" folding
Plugin 'tmhedberg/SimpylFold'

" proper python indentation
Plugin 'vim-scripts/indentpython.vim'

" color schemes
Plugin 'rafi/awesome-vim-colorschemes'

" pywal
Plugin 'dylanaraps/wal.vim'

" Live LaTeX preview
Plugin 'xuhdev/vim-latex-live-preview'

" C++ highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'

" Pandoc integration
Plugin 'vim-pandoc/vim-pandoc'

" Pandoc syntax
Plugin 'vim-pandoc/vim-pandoc-syntax'

" All plugins must be added before the following line
call vundle#end()

" -- end plugins --

" -- maps --
"
" leader
let mapleader = ","

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Enable folding with the spacebar
nnoremap <space> za

" NERDTreeTabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Searching
nnoremap / /\v
vnoremap / /\v

" Searching
map <leader><space> :let @/=''<cr> " clear search

" Formatting
map <leader>q gqip

" Toggle display tabs and newlines
map <leader>l :set list!<CR> " Toggle tabs and EOL

"  -- end maps --

