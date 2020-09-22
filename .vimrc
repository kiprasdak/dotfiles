" Pluggins
call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
call plug#end()

" Correct colors
if (has("termguicolors"))
  set termguicolors
endif
 
" Theme
colo PaperColor

" Formatting
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set cindent

" Gutter
set number
set relativenumber

" Search
set hlsearch
set incsearch

" On esc remove visual selection without delay (related to tmux)
set timeoutlen=1000 ttimeoutlen=0

" Buffer
set hidden
set switchbuf=useopen,usetab
