syntax on          " Enables syntax highlighting
filetype indent on " Enables automatic indentation
filetype plugin on

" setlocal temporarily modifies the settings for a file
" The below enables spellchecking and fixed width for git commits
" for which vim is set as the default editor
autocmd Filetype gitcommit setlocal spell textwidth=72

" tabstop is redundant due to the usage of expand tab
set expandtab      " Tab key inserts spaces instead of tab characters
set smarttab       " Use shiftwidth for tab insertion spaces
set softtabstop=4  " Space width representation of tabs for backspaces
set shiftwidth=4   " Use < and > for indentation in visual mode

set wrap           " Wraps text once it hits the width limit
set textwidth=79   " 79 is PEP-8 compatible, 80 is nice for markdown
set colorcolumn=85 " Visual indicator at 85 columns to show I've gone over

set number         " Add line numbers
set ruler          " Show current position
set showmatch      " Indicate matching brackets

set showcmd        " Show the last command used

set ignorecase     " Ignore case when searching
set smartcase      " Intelligent cases when searching
set hlsearch       " Highlight search results

set nofixendofline " Disable automatic newline at end of file

" Press the leader key in normal mode
let mapleader= " "  " Changes the leader key to space

map <leader>r :source ~/.vimrc<CR> " Reloads .vimrc
