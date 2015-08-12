"set nocompatible

if has('vim_starting')
  set rtp+=~/.vim/bundle/neobundle.vim/
endif

" load my config
set runtimepath+=~/.vim/
runtime! my_autoload/*.vim

"neo bundle
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'neobundle.vim'

NeoBundle 'Shougo/vimproc', {
   \ 'build' : {
      \ 'windows' : 'make -f make_mingw32.mak',
      \ 'cygwin' : 'make -f make_cygwin.mak',
      \ 'mac' : 'make -f make_mac.mak',
      \ 'unix' : 'make -f make_unix.mak',
  \ },
\ } 

filetype plugin indent on

NeoBundleCheck

"plugins
"install: NeoBundleInstall
"uninstall: NeoBundleClean

"とりあえずコピペしたからいらないのありそう
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'davidoc/taskpaper.vim'
"NeoBundle 'itchyny/lightline.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'mattn/sonictemplate-vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 't9md/vim-choosewin'
NeoBundle 'vim-scripts/vim-coffee-script'
