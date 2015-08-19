set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/tComment'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Leader Key
let mapleader=","

" Config nerdtree
map <leader>n :NERDTreeToggle <cr>

" Toogle comments
nnoremap <silent> <Leader>c :TComment<CR>
vnoremap <silent> <Leader>c :TComment<CR>
inoremap <silent> <Leader>c <Esc>:TComment<CR>i

" Config colorscheme
colorscheme hemisu
set background=dark

" Config tabs
set expandtab
set tabstop=2
set shiftwidth=2
filetype plugin indent on
syntax on

" Config view
set number
