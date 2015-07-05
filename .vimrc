set nocompatible
set number
"Ubuntu-Vimrc lines
"
"
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
set showmatch
"Indentation
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
let python_highlight_all = 1
"
"
"Closing braces and all
inoremap {<CR> {<CR><Esc>i}<Esc>ko
:inoremap ( ()<Esc>i
noremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap " ""<Esc>i

"
"Pathogen
execute pathogen#infect()
filetype plugin indent on
"
"Color scheme
"
"":autocmd BufEnter,FileType *
""\   if &ft ==# 'html' || &ft ==# 'css' | colorscheme Tomorrow-Night |
""\   elseif &ft ==# 'none' || &ft ==# 'java' || &ft ==# 'py' ||&ft ==# 'c' || &ft ==# 'cpp' | colorscheme Monokai |
""\   else | colorscheme Monokai|
""\   endif
"
""if $COLORTERM == 'gnome-terminal'
""	set t_Co=256
""endif
"Set t_Co=256 when to use the full colors otherwise for solarized, use 16
set t_Co=16
if has('gui_running')
	colorscheme solarized
	set background=light
else
	colorscheme solarized
	set background=dark
endif
"
"Using this extension, you can paste by pressing Shift+Insert to paste from clipboard and to copy, use Ctrl+Copy
:set clipboard=unnamed
"Vim-airline settings 
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1	
let g:airline#extensions#tabline#fnamemod = ':t'
"Highlight the cursor line when we are in insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

"Switch to next buffer fastly
"
nmap <leader>b :bnext! <cr>
"Set the powerline fonts in GUI
if has('gui_running')
	set guifont=Meslo\ LG\ S\ for\ Powerline\ 10  
endif
