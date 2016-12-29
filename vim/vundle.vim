" ========================================
" Vim plugin configuration
" ========================================
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" +syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle

filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" Generic
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Syntax check & hightlighting & colors
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'

" Completion & snippets
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" JavaScript and HTML
Plugin 'pangloss/vim-javascript'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'Chiel92/vim-autoformat'

" Other
Plugin 'tpope/vim-markdown'

call vundle#end()

" Filetype plugin indent on is required by vundle
filetype plugin indent on

