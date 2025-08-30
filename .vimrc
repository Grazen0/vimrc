" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

set background=dark
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set noswapfile
set nowrap
set number
set relativenumber
set scrolloff=4
set shiftwidth=4
set smartcase
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set undofile

let mapleader = " "
let maplocalleader = ","

nnoremap <esc> :nohlsearch<cr>
nnoremap U <c-r>
nnoremap gh ^
nnoremap gl $

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <a-h> <c-w>H
nnoremap <a-j> <c-w>J
nnoremap <a-k> <c-w>K
nnoremap <a-l> <c-w>L
nnoremap <a-,> <c-w><lt>
nnoremap <a-.> <c-w>>
nnoremap <a--> <c-w>-
nnoremap <a-=> <c-w>+

call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

call plug#end()
