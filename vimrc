" Mapping
" :map all modes
" :noremap - all modes non-recursive
" :nmap normal mode
" :nnoremap - normal mode non-recursive
" :vmap - visual mode
" :vnoremap - visual mode non-recursive

set nocompatible
set number
set encoding=utf-8
set ruler
set hidden

set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set backspace=indent,eol,start

set hlsearch    " highlight matches
set incsearch   " search immediately as you type
set ignorecase  " searches are case insensitive...
set smartcase   " ... un$$ss they contain at least one capital letter

set listchars=tab:▸\ ,trail:·,eol:¬

set backupdir=~/.vim/_backup/    " where to put backup files.
set directory=~/.vim/_swap/      " where to put swap files.

runtime macros/matchit.vim

" Vundle
filetype off " must be off for Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'kchmck/vim-coffee-script'
" Bundle 'thoughtbot/vim-rspec'
" Bundle 'tpope/vim-dispatch'
Bundle 'benmills/vimux'
Bundle 'jgdavey/vim-turbux'

Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

nmap <silent> <leader>t <Plug>SendTestToTmux
nmap <silent> <leader>s <Plug>SendFocusedTestToTmux
nmap <silent> <leader>l :VimuxRunLastCommand<CR>
nmap <silent> <leader>c :VimuxCloseRunner<CR>

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
endif

"VimuxCloseRunner let g:turbux_command_prefix = 'bundle exec'
" let g:no_turbux_mappings = 1
" nmap <leader>l :call SendTestToTmux(0)<CR>

" map <leader>c :cclose<CR>

" let g:rspec_command = ":w\|:!bundle exec rspec --color {spec}"
"  let g:rspec_command = "Dispatch bundle exec rspec --color {spec}"
" "
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <leader>s :w\|:!bundle exec rspec --color %<cr>
"
""
"" Colors and Theme
""
syntax enable
set background=dark
colorscheme cmar

set laststatus=2 "always display status bar
set statusline=%<%f\ %{fugitive#statusline()}\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %y

" %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" :set statusline=[%n]       " Buffer Number
" :set statusline+=\         " Separator
" :set statusline+=%f%r      " Path to the file
" :set statusline+=%{fugitive#statusline()}
" :set statusline+=%m
" :set statusline+=%=        " Switch to the right side
" :set statusline+=%l        " Current line
" :set statusline+=/         " Separator
" :set statusline+=%L        " Total lines
" :set statusline+=\         " Separator
" :set statusline+=[%Y]      " File Type

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

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
noremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ec :vsplit g:colors_name<CR>

nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :cfirst<CR>
nnoremap ]Q :clast<CR>

map <d-k> \\\
imap <d-k> \\\

nmap <leader>r :!powder restart<CR>
" nmap <leader>l :set list!<CR>
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

""
"" netrw
""
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'
" let g:netrw_list_hide='^\..*'


nmap <leader>f ggVG<CR>


" if executable("ag")
"   set Grepprg=ag\ --nogroup\ --nocolor
" endif

" turn off highlights for current search only, or type :noh
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" haste paste
nnoremap <silent> <leader>h :%w ! haste \| pbcopy<CR>
vnoremap <silent> <leader>h :w ! haste \| pbcopy<CR>


" Plugin Settings
set wildignore+=*/tmp/*
set wildignore+=*/public/spree/*
set wildignore+=*/public/spraycan/*

let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" {{{
" removes trailing white space from all files
autocmd BufWritePre * :%s/\s\+$//e

" File Types
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *.erb set filetype=html
autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby

" set up for markdown
autocmd FileType text,markdown setlocal textwidth=78
autocmd FileType text,markdown setlocal noexpandtab
" }}}

""
"" Rails

"" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
" silent !mkdir ~/.vim/backups > /dev/null 2>&1
" set undodir=~/.vim/backups
" set undofile"

" mapping to reveal syntax
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

