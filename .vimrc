" commons
set number
set backspace=2

" highlight
syntax on
colorscheme murphy

" indent
set autoindent
set expandtab
set tabstop=2

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

