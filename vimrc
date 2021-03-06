set nocompatible               " be iMproved
filetype off                   " required!

" INSTALL vundler
" $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
" Bundle 'micha/vim-colors-solarized'
Bundle 'micha/grb256'
Bundle 'micha/wombat256'
Bundle 'micha/vim70style'
Bundle 'jpalardy/vim-slime.git'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'

" vim-scripts repos
Bundle 'guicolorscheme.vim'
Bundle 'candy.vim'
Bundle 'paredit.vim'
Bundle 'minibufexpl.vim'
Bundle 'gnupg.vim'
Bundle 'VimClojure'

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

autocmd FileType            pgp             set ts=8
autocmd FileType            conque_term     set cc=0
autocmd BufNewFile,BufRead  *.json          setf javascript
autocmd BufNewFile,BufRead  *.cljs          setf clojure
autocmd BufNewFile,BufRead  .bash_aliases   setf sh
autocmd BufNewFile,BufRead  Makefile        setf make|set noet
autocmd BufWritePost        ~/.vimrc        so ~/.vimrc
autocmd BufWritePost        vimrc           so ~/.vimrc

" vimclojure settings
let maplocalleader = ";"
let vimclojure#HighlightBuiltins = 1
let vimclojure#WantNailgun = 0
nmap <C-E> :%Evalcqq
nmap <C-X> :%Evalcqc

set t_Co=16

syntax enable
set background=dark

set autoindent
set shiftwidth=2
set tabstop=2
set ignorecase
set smartcase
set ruler
set incsearch
set showmatch
set pastetoggle=<C-P>
set expandtab
set dictionary="/home/micha/.dict"
set foldmethod=indent
set foldlevelstart=99
set hidden
set numberwidth=5
set nu
set cc=80

nmap aa :b#
nmap ah :bp
nmap al :bn
nmap aK :bd
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j

nmap a01 :b1
nmap a02 :b2
nmap a03 :b3
nmap a04 :b4
nmap a05 :b5
nmap a06 :b6
nmap a07 :b7
nmap a08 :b8
nmap a09 :b9
nmap a10 :b10
nmap a11 :b11
nmap a12 :b12
nmap a13 :b13
nmap a14 :b14
nmap a15 :b15
nmap a16 :b16
nmap a17 :b17
nmap a18 :b18
nmap a19 :b19
nmap a20 :b20

function! Mosh_Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
endfunction

:inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>

"runtime! plugin/guicolorscheme.vim
"GuiColorScheme candy
colorscheme vim70style
