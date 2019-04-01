" General setting
set nocompatible		" Not vi compatible
set number			" Show line number
set clipboard=unnamed		" Use the OSX clipboard by default
set ttyfast			" Optimize for fast terminal connections
set esckeys			" Allow cursor keys in insert mode
set backspace=indent,eol,start	" Allow backspace in insert mode
set showcmd			" Show incomplete cmds down the bottom
set showmode			" Show current mode down the bottom
set autoread			" Reload files changed outside vim
set hidden			" Hide buffer instead of closing it
set encoding=utf-8 nobomb	" Use UTF-8 without bom
set splitbelow			" Open new split panes to bottom
set splitright			" Open new split panes to right
let mapleader=','

" Load plugin
if filereadable(expand("$HOME/.dotfiles/vim/vundle.vim"))
    source $HOME/.dotfiles/vim/vundle.vim
endif 

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Completion
set wildmenu
set wildmode=longest:list	" Complete longest common string, then list alternatives

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Foding
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Wrapping
set nowrap
set linebreak

" Search
set hlsearch			" Highlight searches
set incsearch
set ignorecase
set showmatch
set smartcase

" Scrolling
set scrolloff=4
set sidescrolloff=15
set sidescroll=1

" Use the Solarized Dark theme
syntax enable           " Enable syntax highlighting
set cursorline
if has('gui_running')
    set background=dark
else
    set background=dark
endif
colorscheme solarized
let g:solarized_termtrans=1

" call togglebg#map("<F5>")   

" Plugin config
map <C-u> :Autoformat<CR>
nmap <leader>n: NERDTreeToggle<cr>
let NERDTreeShowHidden=1
map <C-e> :NERDTreeToggle<CR>

" Powerline 
" set guifont=Inconsolata\ for\ Powerline:h15
" let g:Powerline_symbols = 'fancy'
" set encoding=utf-8
" set t_Co=256
" set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
" set termencoding=utf-8

" Auto command
autocmd vimenter * NERDTree

"---------------------
" Local customizations
"---------------------

" local customizations in ~/.vimrc_local
let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif
