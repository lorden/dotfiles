"""""""""""""""""""
" Global settings "
"""""""""""""""""""
" Less vi more vim
set nocompatible

" Don't autodetect files, required for Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" Bundles
Bundle 'kien/ctrlp.vim'

Bundle 'bling/vim-airline'
set laststatus=2 "  always on
set t_Co=256  " colorful
let g:airline_powerline_fonts = 1
let g:airline_theme = 'light'

Bundle 'scrooloose/syntastic'

Bundle 'scrooloose/nerdtree'
autocmd vimenter * if !argc() | NERDTree | endif

Bundle 'edkolev/promptline.vim'

Bundle 'tpope/vim-fugitive'

Bundle 'vim-scripts/taglist.vim'
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

Bundle 'vim-scripts/AutoTag'

Bundle 'lepture/vim-jinja'

Bundle 'mustache/vim-mustache-handlebars'

Bundle 'ervandew/supertab'

Bundle 'nvie/vim-flake8'

Bundle 'klen/rope-vim'
let ropevim_vim_completion=1

filetype plugin indent on     " required for Vundle

"" Highlight all search pattern matches
set hlsearch
"
" Enter adds new line, stays in nav mode
map <S-Enter> O<Esc>j
map <CR> o<Esc>k

" Tab navigation
nmap <C-A-PageDown> :tabnext<CR>
imap <C-A-PageDown> <Esc>:tabnext<CR>i
nmap <C-A-PageUp> :tabprevious<CR>
imap <C-A-PageUp> <Esc>:tabprevious<CR>i

" Cursorline
set cursorline cursorcolumn

" File encodings
set fileencodings=utf-8,latin1

" Convert tab to spaces
set expandtab

" Set line numbers
set nu

" Syntax always on
syntax on

" Keep the same indentation as the previous line
set autoindent

" Insert a level of indentation in some file types
set smartindent

" Global indent
set tabstop=4
set shiftwidth=4
"
" Load custom properties
source ~/.vim/custom.vim

" Python source
autocmd FileType python source ~/.vim/py.vim

" PHP source
autocmd FileType php source ~/.vim/php.vim

" Mustache, handlebars, jinja
autocmd FileType mustache setlocal set syntax=html
autocmd FileType handlebars setlocal set syntax=html

" Salt files
au BufNewFile,BufRead *.sls set filetype=yaml

" Shortcuts
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :TlistToggle<CR>

set paste

" Ignore pyc files in NERDTreeToggle
let NERDTreeIgnore = ['\.pyc$']

" GIT commit message line length
autocmd Filetype gitcommit setlocal spell textwidth=72
