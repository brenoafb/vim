" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
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

" swift support
Plugin 'keith/swift.vim'
" syntastic integration
let g:syntastic_swift_checkers = ['swiftpk']

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

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number relativenumber

" Show file stats
set ruler

" Clipboard support
set clipboard=unnamed

" Blink cursor on error instead of beeping (grr)
" set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
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

" flag bad whitespace 
" not working on c for some reason
" au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" NERDTreeTabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

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
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
" inoremap <F1> <ESC>:set invfullscreen<CR>a
" nnoremap <F1> :set invfullscreen<CR>
" vnoremap <F1> :set invfullscreen<CR>

" Tab browsing
" nmap <C-[> <Esc>:tabprev<CR>
" nmap <C-]> <Esc>:tabnext<CR>
" nmap <C-n> <Esc>:tabnew


" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" Open NERDTree automatically
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

