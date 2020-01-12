" This is Armen's vim config
" I've created this config to have minimal external dependencies
" and only use plugins that don't get in my way
"
set nocompatible
let &t_Co=256

" Silly stuff to fix cursor
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
colorscheme molokai

" plugin settings
if has('win32') || has('win32unix')
    let g:tagbar_ctags_bin='~/.vim/win32/ctags.exe'
endif

" need to install eslint:
" npm install eslint -g
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_python_checkers=['pylint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype plugin indent on
nnoremap ; :
nnoremap ' "

" dealing with splits
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Right> <C-W><C-L>
nnoremap <M-Right> :vertical resize +10<CR>
nnoremap <M-Left> :vertical resize -10<CR>
nnoremap <M-Up> :res -10<CR>
nnoremap <M-Down> :res +10<CR>

nnoremap <Tab>` :TagbarToggle<CR>
" aligning things
vnoremap <Tab>; :Tab /:<CR>
vnoremap <Tab>= :Tab /=<CR>
vnoremap <Tab>* :Tab /*<CR>
" align all the things
vnoremap <Tab><Tab> :Tab /*<CR>:Tab /=<CR>:Tab /:<CR>


" commenting things
if has('win32') || has('win32unix')
    vnoremap <C-/> :Commentary<CR>
    nnoremap <C-/> :Commentary<CR>
else
    vnoremap <C-_> :Commentary<CR>
    nnoremap <C-_> :Commentary<CR>
endif

" excluding quickfix from buffer navigation
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" some comfy basics
set background=dark
set backspace=indent,eol,start
set cursorline
set encoding=utf8
set expandtab
set ffs=unix,dos
set fillchars+=vert:│
set history=1000
set hidden
set hls
set incsearch
set nobackup
set noswapfile
set shiftwidth=4
set showmatch
set smarttab
set softtabstop=4
set tabstop=4
set mouse=a
set title
set cc=80
set number
highlight ColorColumn ctermbg=8
syntax enable

" motd
autocmd VimEnter * echo "Armen's Vim Config v0.2"
