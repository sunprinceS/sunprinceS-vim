"  Common Shortcut:

"""""""""""""""""""""
" ~File Processing~ "
"""""""""""""""""""""

"Fast saving
inoremap <silent> <C-s> <Esc>:w<CR>i
nnoremap <silent> <C-s> :w<CR>

"redo and undo
inoremap <silent> <C-z> <Esc>ui
inoremap <silent> <C-r> <Esc><C-r>i
nnoremap <silent> <C-z> u

"Search and replace
""" Don't change this two mapping's order(strange contradiction...OTL)
nnoremap <leader>sw :%s/<C-R><C-W>//g<left><left>
vnoremap <leader>sw <ESC>"syiwgv:s/<C-R>s//g<left><left>
nnoremap <leader>/ :nohl<CR>

"Paste
set pastetoggle=<F2>
inoremap <C-v> <ESC>"+pi
vnoremap <C-c> "+y

"increase and decrease number under the cursor
nnoremap + <C-a>
nnoremap - <C-x>

"Show the standard line
nn <silent> <A-Left> :call ReferenceLine('sub')<CR>
nn <silent> <A-Right> :call ReferenceLine('add')<CR>

"delete traling space
noremap <A-n> mmHmt:%s/\s\+$//ge<CR>'tzt'm:nohl<CR>
set lcs=tab:\|\ ,nbsp:%,trail:-
highlight LeaderTab guifg=#666666
match LeaderTab /^\t/

""""""""""""
" ~Moving~ "
""""""""""""

"treat long lines as break lines
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
nnoremap $ g$
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"buffer moving
noremap <C-PageDown> :tabn<CR>
noremap <C-PageUp> :tabp<CR>
noremap <leader>n :tabnew<CR>

"line moving
nnoremap <silent> <C-S-Up> mz:m .-2<CR>==`z
inoremap <silent> <C-S-Up> <Esc>:m .-2<CR>==gi
vnoremap <silent> <C-S-Up> :m '<-2<CR>gv=gv
nnoremap <silent> <C-S-Down> mz:m .+1<CR>==`z
inoremap <silent> <C-S-Down> <Esc>:m .+1<CR>==gi
vnoremap <silent> <C-S-Down> :m '>+1<CR>gv=gv
