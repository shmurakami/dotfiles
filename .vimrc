syntax on
filetype plugin indent on

set runtimepath+=~/.vim/
runtime! my_autoload/*.vim

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" run :PlugInstall to install

Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'Shougo/neocomplcache'
Plug 'Shougo/unite.vim'
Plug 'thinca/vim-quickrun'
Plug 'davidoc/taskpaper.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'mattn/sonictemplate-vim'
Plug 'Shougo/vimfiler.vim'
Plug 'mattn/emmet-vim'
Plug 'w0ng/vim-hybrid'
Plug 't9md/vim-choosewin'
Plug 'vim-scripts/vim-coffee-script'
Plug 'violetyk/neocomplete-php.vim'
Plug 'othree/html5.vim'

call plug#end()
