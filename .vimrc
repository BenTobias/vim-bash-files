set nocompatible

" === General Config ===
set hidden
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set laststatus=2
set linebreak
set wrap

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Turn on syntax highlighting
syntax on

" === Search ===

" Finds next match while searching
set incsearch

" Highlight search results
set hlsearch

" Case insensitive search
set ignorecase
set smartcase

" === Indentation ===
set autoindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" For autoindenting 
set autoindent
set number


" Column lines that are freaking ugly, but could be useful
"set cursorcolumn
"set cursorline

" Spell check
" set spell

" Scrolling
set scrolloff=8 

" === Mappings ===

" Tabs
map tn :tabn<CR>
map tp :tabp<CR>
map te :tabe<Space>
map tm :tabm<Space>

" Cut
map yd <S-y><S-d>

" === Others ===
set ruler
set visualbell
set encoding=utf-8

"""""""""""""""""""""""""""""
"" Powerline
"""""""""""""""""""""""""""""

set rtp+=/Users/benedict/.vim/bundle/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

"""""""""""""""""""""""""""""
"" Pathogen
"""""""""""""""""""""""""""""

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on


" Disable pylint checking every save
let g:pymode_lint_write = 0
let g:pymode_run_key = 'R'
