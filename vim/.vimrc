let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible
set encoding=utf-8
syntax on
filetype plugin indent on
set hidden

set number
set cursorline
set showcmd
set wildmenu
set wildmode=longest:full,full
set scrolloff=5

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set incsearch
set hlsearch
set ignorecase
set smartcase

set backspace=indent,eol,start
set splitbelow
set splitright

set clipboard=unnamedplus

let mapleader = " "

noremap <Leader>nh :nohlsearch<CR>

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'

call plug#end()
