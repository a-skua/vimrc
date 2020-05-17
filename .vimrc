" plugins
" set variables
let NERDTreeShowBookmarks = 1
let NERDTreeHijackNetrw = 0

" load
packloadall
silent! helptags ALL

" NERDTree
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
    \ b:NERDTree.isTabTree()) | q | endif

" commons
set number
set backspace=2
set wildmenu
set wildmode=list:longest,full

" highlight
syntax on
colorscheme iceberg
set cursorline
set cursorcolumn
" search
set hlsearch
set incsearch

" space, tab and return
set list
set listchars=tab:t_,trail:~,eol:$

" indent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set foldmethod=syntax
set foldcolumn=2
autocmd BufRead * normal zR

" swap
" set noswapfile
if !isdirectory(expand("$HOME/.vim/swap"))
        call mkdir(expand("$HOME/.vim/swap"), "p")
endif
set directory=$HOME/.vim/swap//

" undo
set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
        call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir=$HOME/.vim/undodir

" key config
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
command! Bd :bp | :sp | :bn | :bd

