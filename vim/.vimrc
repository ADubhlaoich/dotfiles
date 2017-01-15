execute pathogen#infect()

" Enable syntax processing
syntax on

filetype indent on
filetype plugin on

" Limit the width of git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

set autoread " Automatically read external file changes
set cursorline " Highlight the line your cursor is oni
set number " Add line numbers to the editor
set nobackup " Disable back-up files
set nowb "Same as above
set noswapfile " Yuuup
set showcmd " Display the last used command in the bottom right
set expandtab " Creates spaces when inserting a tab
set tabstop=4 " Spaces used to visually represent a tab
set softtabstop=4 " Spaces inserted or removed when using tabs
set showmatch " Highlight matching parenthesis when highlighting one
set wildmenu " Provide a graphical menu for tab autocompletion

