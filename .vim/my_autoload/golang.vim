"edit golang mode

if $GOROOT != ''
  set rtp+=$GOROOT/misc/vim
endif

"gocode
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

