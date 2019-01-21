set laststatus=2
set nocompatible
set ignorecase
set smartcase
set mouse=a
set wildmenu
set showcmd
set hlsearch
set backspace=indent,eol,start
set nostartofline
set number
set relativenumber
set tabstop=4
set softtabstop=0
set shiftwidth=4

syntax on

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
runtime macros/matchit.vim

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-vinegar'
Plug 'mustache/vim-mustache-handlebars'

call plug#end()

color dracula

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" The above lines should be replaced with the ones below
let g:airline_powerline_fonts = 1
set guifont=SFMono\ Nerd\ Font:h12


let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_browse_split = 4
" let g:netrw_liststyle = 3

"function! MyProjectDrawer()
"	if filereadable(expand('%'))
"			Vexplore
"	endif
" endfunction

" augroup openDrawer
"  autocmd!
"  autocmd VimEnter * :call MyProjectDrawer()
" augroup END

