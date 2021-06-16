" ------------------ General Settings ------------------- "
syntax enable
set number         " Show line number
set relativenumber " Relative line number
set history=500    " Keep 500 items in the history
set ruler          " Show the cursor position
set showcmd        " Show incomplete commands in status bar
set wildmenu       " Shows a menu when using tab completion
set scrolloff=5    " Get on 5th lines after z<Enter>
set hlsearch       " Hight first search match
set incsearch
set ignorecase     " Ignore case when search
set smartcase      " Case sensitive when seach with upper&lower caseh
set ai             " Keep same indentation for newline
set si             " Smart indent position when close {[...
set hidden         " Can switch to other buffer without saving current
set nobackup       " avoid issues with coc
set nowritebackup  " avoid issues with coc
set mouse=a        " Enable your mouse
set splitbelow     " Horizontal splits will automatically be below
set splitright     " Vertical splits will automatically be to the right
set tabstop=2      " Insert 2 spaces for a tab
set shiftwidth=2   " Change the number of space characters inserted for indent
set smarttab       " Makes tabbing smater will realize you have 2 vs 4
set expandtab      " Converts tabs to spaces
set smartindent    " Makes indenting smart


" ------------------- Key Remapping ---------------------- "
let g:mapleader = ' '
inoremap jk <Esc>
nnoremap <silent> <leader>er :e ~/.config/nvim/init.vim<CR>


" ------------------ Plugins (Vim Plug) ----------------- "
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-markdown'

" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Alignment
Plug 'junegunn/vim-easy-align'

call plug#end()

" Import plugin configs
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/coc_config.vim
source $HOME/.config/nvim/plug-config/easy_align.vim
