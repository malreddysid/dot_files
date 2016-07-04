colorscheme badwolf " to set the colorscheme. Colors are found at ~/.vim/colors
set background=dark
set guifont=Courier\ New\ 18
map <C-f> :set guifont=Courier\ New\ 18<cr> 

syntax enable " enable syntax highlightng

set tabstop=4 " number of visual spaces per tab

set softtabstop=4 " number of spaces inserted for tab when editing

set expandtab " makes tab as spaces when saving

set number " show line numbers

set showcmd " show command in bottom bar

set cursorline "highlight current line

filetype indent on

set wildmenu " visual autocomplete for command menu

set lazyredraw

set showmatch " show matching {[(

set incsearch
set hlsearch
set ignorecase

set ruler " shows current position in the bottom

set encoding=utf8

function! CleverTab()
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    else
        return "\<C-N>"
    endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

:command Q q
:command Wq wq
:command WQ wq
