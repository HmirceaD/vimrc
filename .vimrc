set nocompatible
filetype off                  " required

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')

"=======Vundle======
Plugin 'VundleVim/Vundle.vim'
"===================

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'
Plugin 'jnurmine/Zenburn'

Plugin 'altercation/vim-colors-solarized'
Plugin 'nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'nvie/vim-flake8'

Plugin 'Lokaltog/powerline'

"========Airline===========
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"===================

"========Todo===========
Plugin 'fisadev/FixedTaskList.vim'
"===================

"=======Smooth Scrolling============
Plugin 'yuttie/comfortable-motion.vim'
"===================

"=======Bookmarks============
Plugin 'MattesGroeger/vim-bookmarks'
"===================

"=========Surround/Unsurround {} () [] etc.==========
Plugin 'tpope/vim-surround'
"===================

"=========Visualize Git Commands==========
Plugin 'jreybert/vimagit'
"===================

"=======Async Pylint flake8============
Plugin 'w0rp/ale'
"===================

"========Pep8 Indenting===========
Plugin 'hynek/vim-python-pep8-indent'
"===================

"========Syntax Highlighting===========
Plugin 'mitsuhiko/vim-python-combined'
"===================

"========Jinja Integration==========
Plugin 'mitsuhiko/vim-jinja'
"===================

"Plugin 'fisadev/vim-isort'

Plugin 'skywind3000/asyncrun.vim'

"========Virtual Enviroment Integration==========
Plugin 'jmcantrell/vim-virtualenv'
"===================

"^^^^^^^^^^ ALL PLUGINS MUST BE ADDED BEFORE THIS LINE ^^^^^^^^^^^^^
call vundle#end()            " required
filetype plugin indent on    " required
"vvvvvvvvvv ALL NON-PLUGINS SETTINGS MUST BE ADDED AFTER THIS LINE vvvvvvvvvvvvv

"=======Run program with F9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
"======

"=======Powerline Setup=====

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme PaperColor              " set color scheme
    endif
endif
"==========


"let $PYTHONUNBUFFERED=1

"let g:vim_isort_python_version = 'python3'

"========Enable Airline===========
let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='simple'

"========Ale linters===========
let b:ale_linters = ['pylint', 'flake8', 'autopep8']

"========Bookmark Config==========
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1


let g:ycm_python_binary_path = 'python'
" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"make backspace work properly
set backspace=indent,eol,start

"pep8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

"customize for autocomplete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nu

set guifont=Consolas:h15





