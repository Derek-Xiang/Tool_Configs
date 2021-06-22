" ------------------ General Settings ------------------- "
syntax enable
set number                           " Show line number
set relativenumber                   " Relative line number
set history=500                      " Keep 500 items in the history
set ruler                            " Show the cursor position
set showcmd                          " Show incomplete commands in status bar
set wildmenu                         " Shows a menu when using tab completion
set scrolloff=5                      " Get on 5th lines after z<Enter>
set hlsearch                         " Hight first search match
set incsearch
set ignorecase                       " Ignore case when search
set smartcase                        " Case sensitive when seach with upper&lower caseh
set ai                               " Keep same indentation for newline
set si                               " Smart indent position when close {[...
set hidden                           " Can switch to other buffer without saving current
set nobackup                         " avoid issues with coc
set nowritebackup                    " avoid issues with coc
set mouse=a                          " Enable your mouse
set splitbelow                       " Horizontal splits will automatically be below
set splitright                       " Vertical splits will automatically be to the right
set tabstop=2                        " Insert 2 spaces for a tab
set shiftwidth=2                     " Change the number of space characters inserted for indent
set t_Co=256                         " Support 256 colors
set smarttab                         " Makes tabbing smater will realize you have 2 vs 4
set expandtab                        " Converts tabs to spaces
set smartindent                      " Makes indenting smart
set updatetime=300                   " Faster completion
set timeoutlen=500                   " By default timeoutlen is 1000 ms
set clipboard=unnamedplus            " Copy paste between vim and everything else
au BufEnter * set fo-=c fo-=r fo-=ok " Stop continue comment header in newline


" ------------------- Key Remapping ---------------------- "
let g:mapleader = ' '
nnoremap <silent> <leader>rc :e ~/.config/nvim/init.vim<CR>

" Better escapes
inoremap jk <Esc>

" keep selected items after < or > 
vnoremap < <gv
vnoremap > >gv

" Use alt + hjkl to resize window
nnoremap <M-j>     :resize -2<CR>
nnoremap <M-k>     :resize +2<CR>
nnoremap <M-h>     :vertical resize -2<CR>
nnoremap <M-l>     :vertical resize +2<CR>

" TAB in general mode will move to next buffer
noremap <TAB>      :bnext<CR>
" SHIFT-TAB to go back
noremap <S-TAB>    :bprevious<CR>

" Control S to save
nnoremap <C-s>     :w<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" ------------------ Plugins (Vim Plug) ----------------- "
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-markdown'                       " Markdown
Plug 'vim-airline/vim-airline'                  " Status Line
Plug 'vim-airline/vim-airline-themes'           " Status Line - Themes
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Complete
Plug 'junegunn/vim-easy-align'                  " Alignment
Plug 'honza/vim-snippets'                       " Snippets

call plug#end()

" Import plugin configs
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/coc_config.vim
source $HOME/.config/nvim/plug-config/easy_align.vim
