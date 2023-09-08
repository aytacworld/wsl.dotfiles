" =========================
" 🔑 DISABLE MOUSE AND KEYS
" =========================
" Disable mouse
set mouse=
" set ttymouse-=a TODO: not working, check this

" Disable arrow keys in normal mode
nnoremap <Left> :echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>

" Disable arrow keys in insert mode
inoremap <Left> <C-o>:echo "No left for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

" Disable arrow keys in visual mode
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>