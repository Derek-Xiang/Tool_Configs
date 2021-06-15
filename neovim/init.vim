" ------------------ General Settings ------------------- "
syntax enable
set number			" Show line number
set relativenumber		" Relative line number
set history=500			" Keep 500 items in the history
set ruler			" Show the cursor position
set showcmd			" Show incomplete commands in status bar
set wildmenu			" Shows a menu when using tab completion
set scrolloff=5			" Get on 5th lines after z<Enter>
set hlsearch			" Hight first search match
set incsearch
set ignorecase			" Ignore case when search
set smartcase			" Case sensitive when seach with upper&lower caseh
set ai				" Keep same indentation for newline
set si				" Smart indent position when close {[...


" ------------------- Key Remapping ---------------------- "
inoremap jk <Esc>



" ------------------ Plugins (Vim Plug) ----------------- "
call plug#begin('~/.vim/plugged')

" Syntax
    Plug 'tpope/vim-markdown'
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Import plugin configs
source $HOME/.config/nvim/plug-config/airline.vim
