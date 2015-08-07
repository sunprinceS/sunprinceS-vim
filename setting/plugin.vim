"  Plugins:
"	->OmniComplete
"	->Undotree
"	->NERDTree
"	->Status line
"	->Tagbar
"	->snippet
"	->MultipleCursor
"	->Emmet
"	->Compile
"	->TMUX switching
"	->Tabularize
"	->matchit
"	->fuzzy finder
"	->Quickfix

"-----------------------"

"""""""""""""""""""
" ~Omni complete~ "
"""""""""""""""""""
set completeopt=menuone,longest,preview
set omnifunc=syntaxcomplete#Complete

""""""""""""""
" ~UndoTree~ "
""""""""""""""
" Persistent undo
if has("persistent_undo")
  set undodir=$HOME/.vim/.undodir
  set undofile
endif
noremap <silent><F3> <ESC>:UndotreeToggle<CR>
""""""""""""""
" ~NERDTree~ "
""""""""""""""
let g:NERDTreeWinSize=  20
let NERDTreeIgnore=     ['\~$','\.pdf$','\.swo','\.swp$','\.o$','\.obj$']
let NERDTreeIgnore +=   ['\.cbp$','\.depend$','\.layout$','\.workspace$'] "add \ first,$ end
"autocmd vimenter * NERDTree "laod NERDTree automatically at beginning
nnoremap <silent> <F5> :NERDTreeToggle<CR>
"set current path when vim start
autocmd VimEnter * cd %:p:h

"""""""""""""""""
" ~Status Line~ "
"""""""""""""""""
"Airline
set laststatus=2
let g:airline_powerline_fonts            = 1
let g:airline_detect_whitespace          = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_c ='%#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#%{airline#util#wrap(airline#parts#filetype(),0)}%{airline#util#append(airline#extensions#tagbar#currenttag(),0)}'
let g:airline_section_x=''
if has("gui_running")
	let g:airline_section_y = '%{strftime("%H:%M %a %Y-%m-%d")}'
else
	let g:airline_section_y = ''
end

""""""""""""
" ~Tagbar~ "
""""""""""""
let g:tagbar_width     = 25
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1
nnoremap <silent> <F8> :TagbarToggle<CR>
inoremap <silent> <F8> <Esc>:TagbarToggle<CR>

"""""""""""""
" ~snippet~ "
"""""""""""""
let g:snips_author = "sunprinceS (TonyHsu)"
let g:snips_email  = "sunprince12014@gmail.com"

""""""""""""""""""
" ~Multi-Cursor~ "
""""""""""""""""""
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"""""""""""
" ~Emmet~ "
"""""""""""
"let g:user_emmet_leader_key='<C-a>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"""""""""""""
" ~Compile~ "
"""""""""""""
noremap <F9> :SCCompile<CR>
noremap <F10> :SCCompileRun<CR>

"View the result of the last run command.
noremap <leader>v :SCViewResult<CR>

""""""""""""""""""""
" ~TMUX switching~ "
""""""""""""""""""""
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-Left> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-Down> :TmuxNavigateDown<CR>
nnoremap <silent> <C-Up> :TmuxNavigateUp<CR>
nnoremap <silent> <C-Right> :TmuxNavigateRight<CR>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

""""""""""""""""
" ~Tabularize~ "
""""""""""""""""
"Powerful alignment
noremap  <leader>t  :Tabularize /
vnoremap <leader>t  :Tabularize /
noremap  <leader>tr :Tabularize /\zs<left><left><left>
vnoremap <leader>tr :Tabularize /\zs<left><left><left>

"""""""""""""
" ~Matchit~ "
"""""""""""""
"Smart extend %
runtime macros/matchit.vim " include matchit plugins in vim

"""""""""
" ~FZF~ "
"""""""""

""""""""""""""
" ~QuickFix~ "
""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
noremap <silent> <leader>qf <Esc>:call QFSwitch()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.fzf "fuzzy finder
