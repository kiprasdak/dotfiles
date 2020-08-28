call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'NLKNguyen/papercolor-theme'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

if (has("termguicolors"))
  set termguicolors
endif  
 
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set number
set hlsearch
set incsearch
set timeoutlen=1000 ttimeoutlen=0

colo PaperColor
