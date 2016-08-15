set nocompatible              " be iMproved, required
filetype off                  " required
set number
set ruler
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
noremap <Space> <Nop>
let mapleader="\<Space>"

" Writes before building
set autowrite

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Copy/Paste from clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" VUNDLE
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line

""" Code Completion (neocompete)
let g:neocomplete#enable_at_startup = 1

""" Misc
" Backspace magic
set backspace=indent,eol,start
" New line split (useful for fn defs)
imap <C-c> <CR><Esc>O

""" Ctrl-P
let g:ctrlp_custom_ignore = '\v[\/](vendor|node_modules|target|dist)|(\.(swp|ico|git|svn))$'
syntax on
filetype plugin indent on
set wildignore+=*/node_modules/*,*/bower_components/*

""" Syntastic
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open=1
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:go_list_type = "quickfix"

""" Colors
set t_Co=256
" set background=dark
colorscheme molokai
" allow transparent bg
hi Normal ctermbg=none

""" Javascript 
let g:indent_guides_start_level=2

""" Go (vim-go)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)

au FileType go nmap <Leader>df <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>f <Plug>(go-referrers)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

" Go syntax-highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Run go import on write
let g:go_fmt_command = "goimports"
