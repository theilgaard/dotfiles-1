" Syntax highlighting on
syntax on

set tabstop=8 softtabstop=0 shiftwidth=4 smarttab

" Expand tabs to spaces
set expandtab

" Show matching parentheses
set showmatch

" Highlight search matches
set hlsearch

" Show lineumbers
set number

" Automatically indent on newline
set autoindent

" Ignore case when searching
set ignorecase

" Always show status line
set laststatus=2

"" Better movement through wrapped lines
noremap j gj
noremap k gk

" ====  Input ==== 

" Set leader key
let mapleader=' '
nnoremap <space> <nop>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>z :wq<CR>
nnoremap <leader>W :w!<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>Z :wq!<CR>
"" Bufferswitching
noremap (     :bprev<CR>
noremap )     :bnext<CR>
"" Close Buffer
noremap Q :bd<CR>

" Disable search match highlighting
map <leader>h :nohlsearch<CR>

" No bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

