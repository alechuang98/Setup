" plugin
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'mileszs/ack.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mattn/webapi-vim'
Plug 'mattn/vim-gist'
call plug#end()

" editor settings
set number
set relativenumber
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0
set mouse=a
set backspace=2
set scrolloff=5
set incsearch
set hls
set cursorline
set noshowmode
set linebreak
syntax enable
colorscheme monokai
filetype plugin indent on

" tnoremap <esc> <C-\><C-n>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>bd :Bclose<cr>

" remove trailing space in file when save
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e

" backup off
set nobackup
set nowb
set noswapfile

" vim-cpp-enhanced settings
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_concepts_highlight=1

" vim-airline settings
let g:airline_powerline_fonts=1
let g:airline_theme='minimalist'
let g:airline_detect_whitespace=0

" ctrlp settings
map <leader>f :CtrlPMRU<CR>
map <leader>b :CtrlPBuffer<cr>
let g:ctrlp_open_multiple_files='i'

" ack settings
map <leader>a :Ack!
let g:ackprg='rg --vimgrep --type-not sql --smart-case'

" nerdtree settings
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

" ale settings
let g:airline#extensions#ale#enabled=1
let g:ale_linters_explicit=1
let g:ale_linters={
\	'c': ['cc'],
\}
let g:ale_c_cc_options='-std=c11 -Wno-implicit-function-declaration'
