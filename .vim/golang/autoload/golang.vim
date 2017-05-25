"edit golang mode

"if exists("did_load_filetypes")
"    finish
"endif

"augroup filetypedetect
"    " goの場合はtabインデント できてない
"    au BufNewFile,BufRead *.go  setlocal tabstop=4 noexpandtab
"augroup end
"
"if $GOROOT != ''
"  set rtp+=$GOROOT/misc/vim
"endif
"
"gocode
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

" golint
"exe "set rtp+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim/ftplugin/go")
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
filetype plugin indent on

" auto format
auto BufWritePre *.go Fmt

" godef
let g:godef_split = 3
let g:godef_same_file_in_same_window=1

filetype off
filetype plugin indent off
set runtimepath+=/usr/local/go/misc/vim
filetype plugin indent on
syntax on
