" Settings
syntax enable

set number
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ruler
set ignorecase
set smartcase
set statusline=%F
set backspace=indent,eol,start

call pathogen#helptags()
call pathogen#infect()
filetype plugin indent on " Don't know what this does, it was just on the pathogen website

" Set mouse available in visual mode
set mouse=v

" Colorscheme settings
set t_Co=256
colorscheme desert256

" Macros
map ,k 1GO#!/usr/bin/env ksh<Esc>ji
map ,p 1GO#!/usr/bin/env python<Esc>ji

map  <S-F2> :set paste<Return>"*P:set nopaste<Return>
map  <F2> :set paste<Return>"*p:set nopaste<Return>

map  <F3> :%!expand --initial --tabs=2<Return>:%!unexpand --first-only --tabs=2<Return>:%s/[ 	][ 	]*$//<Return>
map! <F3> <Esc>:%!expand --initial --tabs=2<Return>:%!unexpand --first-only --tabs=2<Return>:%s/[ 	][ 	]*$//<Return>

map  <F4> :set nu!<Return>
map! <F4> <C-o><F4>

map  <F5> 0"*y$<Return>

map  <F6> gg"*yG<C-o><C-o>

map  <F7> <Esc>:echo expand('%:p')<Return>

" Make vi recognize .jspf files
au BufNewFile,BufRead *.jspf set filetype=jsp

" Make vi parse syntax highlighting from the start of the page for jsps (to fix javascript highlighting)
autocmd BufEnter *.jspf :syn sync fromstart

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType jsp        set omnifunc=htmlcomplete#CompleteTags
autocmd FileType jspf       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['red',     'DarkOrchid3'],
    \ ['blue',    'SeaGreen3'],
    \ ['gray',    'DarkOrchid3'],
    \ ['green',   'firebrick3'],
    \ ['cyan',    'RoyalBlue3'],
    \ ['red',     'SeaGreen3'],
    \ ['magenta', 'DarkOrchid3'],
    \ ['white',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['magenta', 'DarkOrchid3'],
    \ ['green',   'RoyalBlue3'],
    \ ['cyan',    'SeaGreen3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
