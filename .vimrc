execute pathogen#infect()
filetype plugin on
filetype indent on
syntax on

function! WriteRun()
    :w | ! ./%
endfunction
command WR call WriteRun()

set pastetoggle=<F2>

set ruler
set number
highlight LineNr ctermfg=58 ctermbg=232
set foldcolumn=2
highlight FoldColumn ctermfg=86 ctermbg=232

set clipboard=unnamed ""enables putting yanks/deletes/etc in clipboard

set ttyfast
set lazyredraw

set backspace=start
set whichwrap+=<,>,h,l
set nowrap
set ignorecase
set smartcase
set hlsearch
set incsearch

""set et smarttab ts=4 sw=4 ai si
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si

au FileType go set noexpandtab
au FileType yaml set sw=2 ts=2

set virtualedit=block

set splitright

"friendlier tab completion in vim command prompt
set wildmenu
set wildmode=list:longest

nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

imap <Tab> <C-P>
highlight Pmenu ctermbg=brown ctermfg=white
highlight PmenuSel ctermfg=black

highlight Search ctermbg=17 ctermfg=9
hi DiffAdd          ctermbg=235  ctermfg=108  guibg=#262626 guifg=#87af87 cterm=reverse        gui=reverse
hi DiffChange       ctermbg=235  ctermfg=103  guibg=#262626 guifg=#8787af cterm=reverse        gui=reverse
hi DiffDelete       ctermbg=235  ctermfg=131  guibg=#262626 guifg=#af5f5f cterm=reverse        gui=reverse
hi DiffText         ctermbg=235  ctermfg=208  guibg=#262626 guifg=#ff8700 cterm=reverse        gui=reverse
nnoremap do do]c
nnoremap dp dp]c

highlight OverLength ctermbg=234
au FileType markdown match OverLength /\%81v.\+/

"autocomplete options
set completeopt=menuone

set updatetime=100
highlight! link SignColumn LineNr
