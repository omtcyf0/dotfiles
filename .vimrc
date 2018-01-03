" General settings {{{
" Always use UTF-8 encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf8
" Use Unix line endings
set fileformats=unix
" Start scrolling when cursor is 4 lines off the bound
set scrolloff=4
" Enable filetype plugin
filetype plugin indent on
" Always check spelling since I often do typos
set spell spelllang=en_us
" Indent after brackets, etc
set smartindent
" }}}
" UI {{{
" Enable syntax highlighting
if !has('g:syntax_on')
  syntax enable
endif
" Show line numbers
set number
" Display line and column numbers, relative position, etc at the bottom
set ruler
" Highlight current line
set cursorline
" Add a vertical line to mark the line width limit
set colorcolumn=81
highlight ColorColumn ctermbg=DarkMagenta
" Enable visual autocomplete menu
set wildmenu
" Do not redraw when unnecessary
set lazyredraw
" Highlight matching bracket
set showmatch
" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/
" }}}
" Searching {{{
" Enable incremental search
set incsearch
" Highlight chunks of text matching the search pattern
set hlsearch
" Search ignores case unless an uppercase letter appears in the pattern
set ignorecase
set smartcase
" }}}
" Backup {{{
" Don't create backup files
set noswapfile
set nowritebackup
" }}}
" Spaces & Tabs {{{
" Always prefer spaces over tabs, use 2 spaces everywhere except in Python
set expandtab
set softtabstop=2
set shiftwidth=2
" }}}
" Custom commands & functions {{{
" Autoformat selected code using Clang-format
noremap <leader>cf :pyf /home/omtcvxyz/dev/src/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
" }}}
" Language-specific settings {{{
" In Python 4 spaces should be used instead of 2
autocmd FileType python set softtabstop=4| set shiftwidth=4|
" Always use LaTeX
let g:tex_flavor='latex'
" }}}
" Plugins {{{
" Initialize plugin system
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'omtcvxyz/vim-colors-solarized'

call plug#end()
" }}}
" Plugins-specific settings {{{
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
" }}}

set background=dark
colorscheme solarized

" vim:foldmethod=marker:foldlevel=0
