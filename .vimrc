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

" Turn off F1 help.
:nmap <F1> :echo<CR>
:imap <F1> <C-o>:echo<CR>

" Pasting
map  <F2> :set paste<Return>:r !pbpaste<Return>:set nopaste<Return>
map! <F2> <Esc>:set paste<Return>:r !pbpaste<Return>:set nopaste<Return>

" Copying
map  <F3> :%!pbcopy<Return>u
map! <F3> <Esc> :%!pbcopy<Return>u

" Fast numbering
map  <F4> :set nu!<Return>
map! <F4> <C-o><F4>

" Leader
let mapleader = ","
let g:mapleader = ","

" Format Entire File
nn <leader>fe gg=G<cr>``zz

" Format function
nn <leader>ff [[v%==

" Switch between the last two files
nn <leader><leader> <c-^>

" Window movement
nn <c-j> <c-w>j
nn <c-k> <c-w>k
nn <c-l> <c-w>l
nn <c-h> <c-w>h

" Opens a vertical split and switches over
nn <leader>v <C-w>v<C-w>l
" Opens a horizontal split and switches over
nn <leader>h <C-w>s<C-w>j

" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = '\v[\/](target|\.(git))$'
nn <leader>t :let g:ctrlp_default_input = ''<cr>:CtrlP<cr>
nn <leader>T :let g:ctrlp_default_input = expand('<cword>')<cr>:CtrlP<cr>
nn <leader>b :let g:ctrlp_default_input = ''<cr>:CtrlPBuffer<cr>
nn <leader>B :let g:ctrlp_default_input = expand('<cword>')<cr>:CtrlPBuffer<cr>
nn <F5> :let g:ctrlp_default_input = expand('<cword>')<cr>:CtrlPTag<cr>

" Tabs
nn <C-t> :tabnew<cr>
nn <C-p> :tabp<cr>
nn <C-n> :tabn<cr>
nn <leader>tc :tabclose<cr>

" Unimpared mappings
nn ]q :cnext<cr>
nn [q :cprevious<cr>
nn ]Q :clast<cr>
nn [Q :cfirst<cr>

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

let g:rbpt_colorpairs = [
    \ ['brown',   'RoyalBlue3'],
    \ ['red',     'DarkOrchid3'],
    \ ['blue',    'SeaGreen3'],
    \ ['gray',    'DarkOrchid3'],
    \ ['green',   'firebrick3'],
    \ ['cyan',    'RoyalBlue3'],
    \ ['red',     'SeaGreen3'],
    \ ['magenta', 'DarkOrchid3'],
    \ ['white',   'firebrick3'],
    \ ['gray',    'RoyalBlue3'],
    \ ['magenta', 'DarkOrchid3'],
    \ ['green',   'RoyalBlue3'],
    \ ['cyan',    'SeaGreen3'],
    \ ['red',     'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" vim-fireplace
map <leader>r :Require<cr>
