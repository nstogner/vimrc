execute pathogen#infect()

let mapleader=","
syntax on
filetype plugin indent on

" Linter
" This does what it says on the tin. It will check your file on open too, not
" just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1

" Colors
set t_Co=256
set background=dark
colorscheme monokai

" Characters as tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Javascript indention
let g:indent_guides_start_level=2

" New line split (useful for fn defs)
imap <C-c> <CR><Esc>O

