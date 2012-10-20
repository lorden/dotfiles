"""""""""""""""""""
"     Python      "
"""""""""""""""""""
setlocal tabstop=4
setlocal shiftwidth=4
set textwidth=79
set colorcolumn=+1,+2,+3
highlight ColorColumn ctermbg=Black guibg=lightgrey
autocmd FileType python set omnifunc=pythoncomplete#Complete
source ~/.vim/plugins/pythoncomplete.vim
" Folding - toggle with za
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set foldmethod=indent
set foldlevel=99
" Keep the same indentation as the previous line
set autoindent
" Insert a level of indentation in some file types
set smartindent
" PyFlakes
"source ~/.vim/plugins/pyflakes.vim
"filetype on
"filetype plugin on
"@TODO Add taglist: http://vim.sourceforge.net/scripts/script.php?script_id=273
"@TODO Add python: http://www.vim.org/scripts/script.php?script_id=30
source ~/.vim/plugins/taglist.vim
let Tlist_Use_Right_Window   = 1

nnoremap <F5> :!pep8 %<CR>
