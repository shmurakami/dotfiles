"global config
syntax on

filetype plugin indent on

set novisualbell
set showmode
set showmatch
set laststatus=2
"set whichwrap=b,s,h,l,<,>,[,]

set tabstop=4
set shiftwidth=4
set expandtab

set number
set ruler
set title
set showcmd

set smartindent
set autoindent
set smarttab

"status line
" encoding
"set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
" file type
"set statusline+=%y

" os clipboard
set clipboard+=unnamed

"search
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" reflect modify
set autoread

"Tab
if v:version >= 700
    set tabpagemax=15
    if has('unix')
        nmap <ESC>t :tabnew<CR>
        nmap <ESC>e :tabnew ./<CR>
        nmap <ESC>n :tabn<CR>
        nmap <ESC>p :tabp<CR>
        nmap <ESC>o :tabo<CR>
        nmap <ESC>d :tabd
    endif
endif

" auto change current directory
"if v:version >= 700
"    set autochdir
"endif

