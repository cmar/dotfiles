" Mapping
" :map all modes
" :noremap - all modes non-recursive
" :nmap normal mode
" :nnoremap - normal mode non-recursive
" :vmap - visual mode
" :vnoremap - visual mode non-recursive

set number
set encoding=utf-8
set ruler
set hidden

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'thoughtbot/vim-rspec'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-commentary'
Bundle 'kchmck/vim-coffee-script'

""
"" Colors and Theme
""
syntax enable
set background=dark
colorscheme solarized

let &t_SI = "\<Esc>]50;CursorShape=1\x7" " works in iterm2
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " works in iterm2
set laststatus=2 "always display status bar

""
"" Mapping
""
" changing tabs with number keys
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>[ gT
map <leader>] gt
map <leader>0 :tablast<CR>

map <leader>s :w\|:!bundle exec rspec --color %<cr>

map <d-k> \\\
imap <d-k> \\\

nmap <leader>r :!powder restart<CR>
nmap <leader>l :set list!<CR>
nmap <leader>v "*p

nmap <c-b> :CtrlPBuffer<CR>
""
"" Tags
""
map <F5> :!/usr/local/bin/ctags --languages=Ruby -R<CR>

""
"" Status Line
""
"" set statusline=%<[%n]%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

""
"" Tabbing
""
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set backspace=indent,eol,start

""
"" netrw
""
let g:netrw_list_hide='^\..*'

"" powder

""
"" windows
""
"set winwidth=80
"set winminwidth=80

" from http://vimcasts.org/episodes/show-invisibles/
set listchars=tab:▸\ ,trail:·,eol:¬

nmap <leader>f ggVG<CR>

" removes trailing white space from all files
autocmd BufWritePre * :%s/\s\+$//e

""
"" Searching
""
set hlsearch    " highlight matches
set incsearch   " search immediately as you type
set ignorecase  " searches are case insensitive...
set smartcase   " ... un$$ss they contain at least one capital letter

" turn off highlights for current search only, or type :noh
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

filetype plugin on
filetype plugin indent on

""
"" Backup and swap files
""

set backupdir=~/.vim/_backup/    " where to put backup files.
set directory=~/.vim/_swap/      " where to put swap files.

" Plugin Settings
set wildignore+=*/tmp/*
set wildignore+=*/public/spree/*
set wildignore+=*/public/spraycan/*

let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" File Types
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *.erb set filetype=html

" set up for markdown
autocmd FileType text,markdown setlocal textwidth=78
autocmd FileType text,markdown setlocal noexpandtab

""
"" Rails
""
