"set nocompatible

" load my config files
set runtimepath+=~/.vim/
runtime! my_autoload/*.vim

filetype plugin indent on

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/Shaka/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/Shaka/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'davidoc/taskpaper.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'mattn/sonictemplate-vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 't9md/vim-choosewin'
NeoBundle 'vim-scripts/vim-coffee-script'
NeoBundle 'violetyk/neocomplete-php.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'faith/vim-go'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
