" plugins
" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.github.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $HOME/.vimrc
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'cocopon/iceberg.vim'          " colorscheme
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'      " status bar
Plug 'previm/previm'                " preview by markdown and other"
call plug#end()

" previm

" check os...
let s:ostype = system('uname')
if s:ostype == "Linux\n"
    let g:previm_open_cmd = 'google-chrome'
endif

" set variables
let NERDTreeShowBookmarks = 1
let NERDTreeHijackNetrw = 0

" load
packloadall
silent! helptags ALL

" color
colorscheme iceberg
set termguicolors

" NERDTree
" autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
    \ b:NERDTree.isTabTree()) | q | endif

" commons
set  ruler
if &co > 80             " when large terminal
    set number          " show line-number
    set foldcolumn=2    " show guide
endif
set backspace=2
set wildmenu
set wildmode=list:longest,full
set linebreak
set laststatus=2"

" highlight
syntax on
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
let mapleader = "\<space>"
noremap <leader>n :NERDTreeToggle<cr>
noremap <leader>p :CtrlP<cr>
noremap <leader>b :CtrlPBuffer<cr>
noremap <leader>m :CtrlPMRU<cr>

noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
noremap ; :

inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ` ``<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
" inoremap < <><esc>i
inoremap <c-l> <esc>la
inoremap <c-h> <esc>i

tnoremap <c-h> <c-w><c-h>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>
tnoremap <c-n> <c-w>N

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

command! Bd :bp | :sp | :bn | :bd

