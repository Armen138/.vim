"plugins
"nerdtree
"nerdcommenter
"jshint
"tabular

let g:airline_powerline_fonts = 1
set nocompatible
set laststatus=2
set noshowmode
execute pathogen#infect()
autocmd BufNewFile *.rb 0put = '#!/usr/bin/env ruby'   | normal G
autocmd BufNewFile *.sh 0put = '#!/usr/bin/env bash'   | normal G
autocmd BufWritePost *.js :JSHint
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.js :retab
colorscheme molokai
filetype plugin indent on
let &t_Co=256
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'
noremap <silent> <F12> :nohl<CR>
noremap <silent> <F2> :NERDTreeToggle<CR>
"noremap <silent> <F3> :call NERDComment(0, "toggle")<CR>
noremap <silent> <F7> :Grunt<CR>
noremap <silent> <M-Left> <C-w><Left>
noremap <silent> <M-Right> <C-w><Right>
noremap <silent> <M-Up> <C-w><Up>
noremap <silent> <M-Down> <C-w><Down>
noremap <silent> <Tab>; :Tab /:<CR> 
noremap <silent> <Tab>= :Tab /=<CR>
noremap <silent> <Tab>/ :call NERDComment(0, "toggle")<CR>
nnoremap ; :
nnoremap ' "
runtime macros/matchit.vim
set background=dark
set backspace=indent,eol,start
set cursorline
set encoding=utf8
set expandtab
set ffs=unix,dos
set fillchars+=vert:\ 
set hidden
set history=1000
set hls
set incsearch
set nobackup
set noswapfile
set number
set shiftwidth=4
set showmatch
set smarttab
set softtabstop=4
set tabstop=4
set title
set cc=80
highlight ColorColumn ctermbg=8
syntax enable

