set nocompatible

" Cursors
let &t_EI = "\e[2 q"  " Normal (block)
let &t_SI = "\e[6 q"  " Insert (line)
let &t_SR = "\e[4 q"  " Replace (underscore)

let netrw_banner = 0

set autoread
set background=dark
set cursorline
set display=truncate
set expandtab
set formatoptions+=j
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:»\ ,trail:·,nbsp:␣
set mouse=a
set nolangremap
set noswapfile
set nowrap
set nrformats-=octal
set number
set relativenumber
set ruler
set scrolloff=1
set shiftwidth=4
set shortmess-=S
set sidescroll=1
set sidescrolloff=2
set signcolumn=yes
set smartcase
set softtabstop=4
set splitbelow
set splitright
set t_Co=16
set tabstop=4
set termguicolors
set ttimeout
set ttimeoutlen=100
set undodir=$XDG_STATE_HOME/vim/undo
set undofile

call system('mkdir -p ' . &undodir)

filetype plugin indent on
syntax enable

nnoremap <silent> <esc> <cmd>nohlsearch<cr>

" Helix-like mappings
nnoremap <silent> U <c-r>
nnoremap <silent> gh ^
nnoremap <silent> gl $

" Window navigation
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <a-h> <c-w>H
nnoremap <silent> <a-j> <c-w>J
nnoremap <silent> <a-k> <c-w>K
nnoremap <silent> <a-l> <c-w>L
nnoremap <silent> <a-,> <c-w><lt>
nnoremap <silent> <a-.> <c-w>>
nnoremap <silent> <a--> <c-w>-
nnoremap <silent> <a-=> <c-w>+

" Oil-like mappings
nnoremap <silent> - <cmd>Explore<cr>
autocmd FileType netrw nnoremap <buffer> <c-c> <cmd>Rexplore<cr>

" Restore cursor position on startup
autocmd BufReadPost *
  \ let line = line("'\"")
  \ | if line >= 1 && line <= line("$") && &filetype !~# 'commit'
  \      && index(['xxd', 'gitrebase', 'tutor'], &filetype) == -1
  \      && !&diff
  \ |   execute "normal! g`\""
  \ | endif

" Recognize (System)Verilog filetypes
autocmd BufNewFile,BufRead *.v set ft=verilog
autocmd BufNewFile,BufRead *.sv set ft=systemverilog

colorscheme retrobox
