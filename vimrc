" Mapping
" :map all modes
" :noremap - all modes non-recursive
" :nmap normal mode
" :nnoremap - normal mode non-recursive
" :vmap - visual mode
" :vnoremap - visual mode non-recursive

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set number
set encoding=utf-8
set ruler
set hidden

""
"" Colors and Theme
""
syntax on
set background=dark
colorscheme solarized

""
"" Status Line
""
set statusline=%<[%n]%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

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

""
"" windows
""
"set winwidth=80
"set winminwidth=80

" from http://vimcasts.org/episodes/show-invisibles/
nmap <leader>l :set list!<CR>
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
" nmap <silent> <C-D> :NERDTreeToggle<CR>

let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" File Types
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *.erb set filetype=html

" set up for markdown
" autocmd FileType make setlocal noexpandtab
