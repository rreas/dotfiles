nnoremap ; :
vnoremap ; :

map <leader>ev :vsplit  $MYVIMRC<cr>
map <leader>sv :source  $MYVIMRC<cr>
map <Leader>i  mmgg=G`m<CR>
map <Leader>a  :call RunAllSpecs()<CR>
map <Leader>l  :call RunLastSpec()<CR>
map <Leader>s  :call RunNearestSpec()<CR>
map <Leader>t  :call RunCurrentSpecFile()<CR>
map <Leader>n  :call RenameFile()<cr>

map <Leader>f  :CommandTFlush<CR>
map <Leader>h  :CommandT<CR>
map <C-p>      :CommandT<CR>

" Normal mode
nnoremap H ^
nnoremap L $

" Insert mode
inoremap jk    <esc>
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-o> <esc>

" Visual mode
vmap <Enter> <Plug>(EasyAlign)*
