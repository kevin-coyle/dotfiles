set nocompatible              " be iMproved, required
let g:NERDTreeDirArrowExpandable = 'x'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeDirArrows=0
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-fugitive'
Plugin 'lumiliet/vim-twig'
Plugin 'mattn/emmet-vim'
Plugin 'gosukiwi/vim-atom-dark'
" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin indent on
syntax on


"Line numbers"
set number

"search highlighting"
set hlsearch
set incsearch
set tabstop=2

"Mappings"
nmap <c-R> :CtrlPBufTag<cr>
nmap <C-O> :NERDTreeToggle<cr>

"Nerd Tree"

"Colour Scheme"

