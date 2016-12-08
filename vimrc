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
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'joonty/vdebug'
Plugin 'SirVer/ultisnips'
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
let NERDTreeHijackNetrw = 0

"Colour Scheme"

"-------------Split Management--------------"
"set splitbelow 								"Make splits default to below...
"set splitright								"And to the right. This feels more natural.
"
""We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

let mapleader = ',' 

"-------------Mappings--------------"
""Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Quickly browse to any tag/symbol in the project.
"Tip: run ctags -R to regenerated the index.
nmap <Leader>f :tag<space>


"/
"/ CtrlP
"/
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
					autocmd!
						autocmd BufWritePost .vimrc source %
augroup END

"Drupal Commands"
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
		autocmd BufRead,BufNewFile *.theme set filetype=php
  augroup END
endif
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

"PHP Stuff"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
