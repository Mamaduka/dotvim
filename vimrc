"
" .vimrc File
" Maintained by: George Mamadashvili
" georgemamdashvili@gmail.com
" http://twitter.com/mamaduka
"

"No Comatibility with Vi
set nocompatible

"Enable filetypes
filetype on
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

"Write the old file out when switching between files
set autowrite

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Keep 50 lines of commant line history
set history=50

"Display current cursor position in lower right corner
set ruler

"Switch between buffers without saving
set hidden

"Show line numbers
set number

"Set widnow width and height
set lines=30
set columns=100

"Colorscheme and font
set background=light
colorscheme  solarized

"Tab staff
set ts=4 sts=4 sw=4 expandtab

" Put swap files in /tmp file
set backupdir=~/tmp
set directory=~/tmp

"Show command in bottom right portion of the screen
set showcmd

"Indent stuff
set smartindent
set autoindent

"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

"Hide menu
set go-=T 

"Set dolor sign on change
set cpoptions+=$

"Leader
let mapleader = ","

"For autocompletion
set wildmode=list:longest
set hlsearch

"Always show status line
set laststatus=2

"Enable code folding
set foldenable

"Hide mouse when typing
set mousehide

"Shorcut for editing my vimrc file in new tab
nmap <leader>ev :tabedit $MYVIMRC<cr>

"Change Zen Coding expand key
let g:user_zen_expandabbr_key = '<C-e>'

"Saves time
nmap <space> :

"Source the .vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Automatically change current direcotry to that of the file in buffer
autocmd BufEnter * cd %:p:h
