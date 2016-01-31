"Basic Settings=======================================================================================
set nocompatible
set number
set mouse=a
syntax on
set wildmenu
set showcmd
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set cmdheight=2
set history=700
set laststatus=2
:let loaded_matchparen=1
"set showmatch
"Indentation
set incsearch
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set encoding=utf8
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType py setlocal shiftwidth=2 tabstop=2
let python_highlight_all = 1
if has('nvim')
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
endif
"
"
"Mappings==================================================================================================
"Closing braces and all
"inoremap {<CR> {<CR><Esc>i}<Esc>ko
":inoremap ( ()<Esc>i
"noremap        (  ()<Left>
"inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
"inoremap " ""<Esc>i
"
"Mapping Spacebar as leader key
let mapleader = "\<Space>"
imap jk <Esc>
"Switch to next buffer fastly
"
nmap <leader>bn :bnext!<CR>
"Compile and run C++ program in C++11
"
nmap <F8> :!g++ -std=c++11 % && ./a.out<CR>
"
"To save a file using :w
nnoremap <Leader>w :w<CR>
"
"To save and quit file using :wq
nnoremap <Leader>wq :wq<CR>
"
"To close an opened buffer
nnoremap <Leader>bd :bd<CR>
"
"To list all buffers
nnoremap <Leader>ls :ls<CR>
"
"To open file in a new buffer
nnoremap <Leader>e :e 
"
"To close a file
nnoremap <Leader>q :q<CR>
"
"To open terminal in NeoVim
nnoremap <Leader>t :terminal<CR>
"Pathogen==========================================================================================================
execute pathogen#infect()
filetype plugin indent on
"
"Color scheme and
"themes==============================================================================================================
"
"":autocmd BufEnter,FileType *
""\   if &ft ==# 'html' || &ft ==# 'css' | colorscheme Tomorrow-Night |
""\   elseif &ft ==# 'none' || &ft ==# 'java' || &ft ==# 'py' ||&ft ==# 'c' || &ft ==# 'cpp' | colorscheme Monokai |
""\   else | colorscheme Monokai|
""\   endif
"
""if $COLORTERM == 'gnome-terminal'
set t_Co=256
""endif
"Set t_Co=256 when to use the full colors otherwise for solarized, use 16
"if has('gui_running')
	"colorscheme solarized_dark
	"set background=light
"set background=dark
"else
	"colorscheme molokai
"endif
"
"Light Color
colorscheme Simple1
"Dark Color
"colorscheme molokai
"Using this extension, you can paste by pressing Shift+Insert to paste from clipboard and to copy, use Ctrl+Copy
set clipboard=unnamedplus
"Vim-airlinesettings===================================================================================================
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1	
let g:airline#extensions#tabline#fnamemod = ':t'
"Highlight the cursor line when we are in insert mode
":autocmd InsertEnter * set cul
":autocmd InsertLeave * set nocul

"Set the powerline fonts in GUI
if has('gui_running')
	set guifont=Meslo\ LG\ S\ for\ Powerline\ 10  
endif
"
"

