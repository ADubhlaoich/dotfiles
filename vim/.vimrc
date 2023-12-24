set nocompatible " Disable vi compatibility for full vim functionality
set encoding=utf-8

" Auto-install vim-plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins via vim-plug
call plug#begin('~/.vim/vim-plugins')

Plug 'ycm-core/YouCompleteMe'

call plug#end()

syntax on          " Enables syntax highlighting
filetype indent on " Enables automatic indentation
filetype plugin on " Enables filetype-specific configuration

" autocmd specifies commands to be executed automatically when reading
" or writing a file; Filetype defines the condition it is executed on
" setlocal is then used to change settings for the specific filetypes
" as locally scoped oneliners. See ~/.vim/ftplugin for more thorough
" filetype configurations, and use :set ft? to check vim detection
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype make setlocal noexpandtab shiftwidth=8 softtabstop=0

set smarttab       " Use shiftwidth for tab insertion spaces
set shiftwidth=4   " Use < and > for indentation in visual mode
set softtabstop=4  " Space width representation of tabs for backspaces

set wrap           " Wraps text once it hits the width limit
set textwidth=79   " 79 is PEP-8 compatible, 80 is nice for markdown
set colorcolumn=80 " Visual indicator of line length for adherence to textwidth
set number         " Add line number - shows exact on current line
set relativenumber " Add relative number - useful for navigation
set ruler          " Show current position
set showmatch      " Indicate matching brackets

set showcmd        " Show the last command used
set laststatus=2   " Always display the status bar

set ignorecase     " Ignore case when searching
set smartcase      " Intelligent cases when searching
set hlsearch       " Highlight all results
set incsearch      " Enable searching while typing

set backspace=indent,eol,start " Allows backspacing through everything
set nofixendofline " Disable automatic newline at end of file

" Press the leader key in normal mode
let mapleader= " "  " Changes the leader key to space

" Reloads .vimrc
map <leader>r :source ~/.vimrc<CR>
" Clear highlighted search results
map <leader>c :noh<CR>:<backspace>

" Disables directional keys in normal and insert mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>