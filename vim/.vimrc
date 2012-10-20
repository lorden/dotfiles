"""""""""""""""""""
" Global settings "
"""""""""""""""""""
" Highlight all search pattern matches
set hlsearch
" Load NERDTree
source ~/.vim/plugins/NERD_tree.vim
" Enter adds new line, stays in nav mode
map <S-Enter> O<Esc>j
map <CR> o<Esc>k
" Tab navigation
nmap <C-A-PageDown> :tabnext<CR>
imap <C-A-PageDown> <Esc>:tabnext<CR>i
nmap <C-A-PageUp> :tabprevious<CR>
imap <C-A-PageUp> <Esc>:tabprevious<CR>i
" Cursorline
set cursorline
" File encodings
set fileencodings=utf-8,latin1
" Convert tab to spaces
set expandtab
" Set line numbers
set nu
" Keep the same indentation as the previous line
set autoindent
" Insert a level of indentation in some file types
set smartindent

set tabstop=4
set shiftwidth=4

" Python source
autocmd FileType python source ~/.vim/py.vim

" PHP source
autocmd FileType php source ~/.vim/php.vim

" Mustache
autocmd FileType mustache setlocal set syntax=html

nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :TlistToggle<CR>
