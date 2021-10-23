" Pluggins
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Theme
colo gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi clear SpellBad
hi SpellBad cterm=underline
set termguicolors

" Theme
"colo PaperColor
"set background=light

" Formatting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap

" Gutter
set number
set relativenumber

" Search
set nohlsearch
set incsearch

" Splits
set splitright
set splitbelow

" Misc
set hidden
set wildmenu
set encoding=utf-8
set lazyredraw
set scrolloff=8
set timeoutlen=1000 ttimeoutlen=0
set updatetime=300

" Omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" SWP and UNDO
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile

" netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=30

" Keymaps
let mapleader = " "
nnoremap <leader>f :find \c
nnoremap <leader>s :vimgrep \c %<left><left><left><left>
nnoremap <leader>S :vimgrep \c **<left><left><left><left><left>
nnoremap <silent><leader>q :call ToggleQuickFix()<CR>
nnoremap <silent><leader>j :cn<CR>
nnoremap <silent><leader>k :cp<CR>
nnoremap <silent><leader>e :Lex<CR>
vnoremap <leader>p "_dP

" Toggle quickfix
function! ToggleQuickFix()
  if empty(filter(getwininfo(), 'v:val.quickfix'))
    copen
  else
    cclose
  endif
endfunction

" Close empty buffers
function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction

" Persistent folds
augroup PersistentFolds
  autocmd!
  autocmd BufWinLeave * silent! mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" Read project specific .vimrc, then add set path+=/path/to/folder for find command
" Read project specific .vimrc, then add set wildignore+=/path/** or
" wildignore+=*/folder/* to ignore specific folder
set exrc
