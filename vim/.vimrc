" Disable vi compatibility for full vim functionality
set nocompatible

" Auto-install vim-plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins via vim-plug
call plug#begin('~/.vim/vim-plugins')

call plug#end()

syntax on          " Enables syntax highlighting
filetype indent on " Enables automatic indentation
filetype plugin on

" setlocal temporarily modifies the settings for a file
" The below enables spellchecking and fixed width for git commits
" for which vim is set as the default editor
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype make setlocal noexpandtab shiftwidth=8 softtabstop=0

set expandtab      " Tab key inserts spaces instead of tab characters
set smarttab       " Use shiftwidth for tab insertion spaces
set softtabstop=4  " Space width representation of tabs for backspaces
set shiftwidth=4   " Use < and > for indentation in visual mode

set wrap           " Wraps text once it hits the width limit
set textwidth=79   " 79 is PEP-8 compatible, 80 is nice for markdown
set colorcolumn=80 " Visual indicator at 85 columns to show I've gone over

set number         " Add line number - shows exact on current line
set relativenumber " Add relative number - useful for navigation
set ruler          " Show current position
set showmatch      " Indicate matching brackets

set showcmd        " Show the last command used
set laststatus=2   " Always display the status bar

set ignorecase     " Ignore case when searching

set smartcase      " Intelligent cases when searching
set incsearch      " Enable searching while typing

set backspace=indent,eol,start " Allows backspacing through everything
set nofixendofline " Disable automatic newline at end of file

" Press the leader key in normal mode
let mapleader= " "  " Changes the leader key to space

"Reloads .vimrc
map <leader>r :source ~/.vimrc<CR> 

" Disables directional keys in normal and insert mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
