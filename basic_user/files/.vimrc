set ignorecase " ingore case in search
set smartcase " do not ignore case in search i query has capital letter
set ai " autoindent

set expandtab " use spaces instead tabs
set tabstop=4 " use 4 spaces for tabs
set shiftwidth=4 " use 4 spaces for automatic indentation
set softtabstop=4 " BS deletes 4 spaces in one time
set nocp " not compatible with old VI
set incsearch " search while typing
set hidden " do not raise warning if user switches between unsaved buffers
let mapleader = ','

filetype plugin indent on

set wildignore+=*.pyc,*.pyo,*.pyd,*.swo,*.swp
let g:ctrlp_custom_ignore = '\.(hg|git|svn)$|venv$|\.env$'
let g:ctrlp_regexp = 1
let g:pymode_folding = 0 

set noswapfile

set undolevels=1000
set ttyfast
set title
syntax on
set hlsearch
set number
set showcmd
set ruler
set history=1000
set fileformats+=mac

set backspace=indent,eol,start
set fileencodings=utf-8,cp1251,koi8-r,cp866,ucs-bom,ascii
set encoding=utf-8
set pastetoggle=<Leader>p
set statusline=%<%f%h%m%r%=(%{&fileencoding},%{&encoding})\ (%b,0x%B)\ %l,%c%V\ %P
set laststatus=2

autocmd FileType yaml setl indentexpr=
autocmd FileType yaml setl tabstop=2
autocmd FileType yaml setl shiftwidth=2
autocmd FileType yaml setl softtabstop=2

map <F2> :bp<CR>
imap <F2> <ESC>:bp<CR>
map <F3> :bn<CR>
imap <F3> :w<CR>:bn<CR>
map <F4> :BufExplorer<CR>
imap <F4> <ESC>:BufExplorer<CR>
map <F5> :wa<CR>
imap <F5> <ESC>:wa<CR>
map <F8> :wq<CR>
imap <F8> <ESC>:wq<CR>
map <CR> :w<CR>
map <Enter> :w<CR>

map <CR> :w<CR><ESC>
map <Leader>d :bd<CR>

function ToggleHighliting()
    if &hlsearch
        let &hlsearch = 0
    else
        let &hlsearch = 1
    endif
endfunction
nmap <F1> :call ToggleHighliting()<CR>

iab djangotpl {% extends 'base.html' %}<CR><CR>{% block content %}<CR>{% endblock %}<ESC>
iab pdb! import pdb; pdb.set_trace()

" Setting up the command mode in russian layout
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
