"""""""""""""""""""
"     Python      "
"""""""""""""""""""
setlocal tabstop=4
setlocal shiftwidth=4
set textwidth=79
set colorcolumn=+1,+2,+3
highlight ColorColumn ctermbg=Black guibg=lightgrey
" Folding - toggle with za
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set foldmethod=indent
set foldlevel=99
" Keep the same indentation as the previous line
set autoindent
" Insert a level of indentation in some file types
set smartindent
let Tlist_Use_Right_Window   = 1

nnoremap <F5> :!pep8 %<CR>
