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

map  <F2> :set paste<Return>:r !pbpaste<Return>:set nopaste<Return>
map!  <F2> <Esc>:set paste<Return>:r !pbpaste<Return>:set nopaste<Return>

map  <F3> :%!expand --initial --tabs=2<Return>:%!unexpand --first-only --tabs=2<Return>:%s/[ 	][ 	]*$//<Return>
map! <F3> <Esc>:%!expand --initial --tabs=2<Return>:%!unexpand --first-only --tabs=2<Return>:%s/[ 	][ 	]*$//<Return>

map  <F4> :set nu!<Return>
map! <F4> <C-o><F4>

map  <F5> 0"*y$<Return>

map  <F6> gg"*yG<C-o><C-o>

map  <F7> <Esc>:echo expand('%:p')<Return>

" Format Entire File
map <leader>fe gg=G<cr>``zz

" Format function
map <leader>ff [[v%==

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Opens a vertical split and switches over
nnoremap <leader>v <C-w>v<C-w>l
" Opens a horizontal split and switches over
nnoremap <leader>h <C-w>s<C-w>j

" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = ''
map <leader>t :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>

" Tabs
map <C-t> :tabnew<cr>
map <C-p> :tabp<cr>
map <C-n> :tabn<cr>
map <leader>tc :tabclose<cr>

" Highlight Trailing Space
highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
match TrailingWhitespace /\s\+$/
au TabEnter * :match TrailingWhitespace /\s\+$/

" Trailing space removal on save
function! StripTrailingSpaces()
    let l = line(".")
    let c = col(".")
    silent! execute '%s/\s\+$//e'
    call cursor(l, c)
endfunction
au BufWritePre * :call StripTrailingSpaces()

" Make vi recognize .jspf files
au BufNewFile,BufRead *.jspf set filetype=jsp

" Make vi parse syntax highlighting from the start of the page for jsps (to fix javascript highlighting)
autocmd BufEnter *.jspf :syn sync fromstart

" Recognize .md files
au BufRead,BufNewFile *.md set filetype=markdown

" easymotion configs
let g:EasyMotion_leader_key = '<Leader>'

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
