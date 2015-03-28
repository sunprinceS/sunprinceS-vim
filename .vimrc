"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   _____                           _                       "
"  / ___/__  ______     ____  _____(_)___  ________         " 
"  \__ \/ / / / __ \   / __ \/ ___/ / __ \/ ___/ _ \	    "
" ___/ / /_/ / / / /  / /_/ / /  / / / / / /__/ ___/	    "
"/____/\__,_/_/ /_/  / .___/_/  /_/_/ /_/\___/\___/ -Vim 1.3" 
"                   /_/                              	    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: TonyHsu 
"
" Version:1.3 
"
" Sections:
"    -> Vundle and Bundle install
"    -> User Interface
"    -> General
"    -> File Processing
"    -> Moving
"
"  Plugins:
"    ->NERDTree
"    ->Gitgutter
"	 ->Status line
"	 ->Tagbar
"	 ->Note
"	 ->snippets
"	 ->LaTeX
"	 ->MultipleCursor
"	 ->Emmet
"	 ->Compile
"
"  Related_functions:
"
"

"""""""""""
" ~Vundle~ "
""""""""""""
set nocompatible    " be iMproved, required
filetype off  "required for Vundle  

"Setting up Vundle
let beHadVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
   	echo "Installing Vundle..."
   echo ""
   silent !mkdir -p~/.vim/bundle
   silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
   let beHadVundle=0
endif

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

"other Bundles:
"if we want to install/update the bundles->type :BundleInstall

"File browser
Bundle 'scrooloose/nerdtree'

"pretty status
Bundle 'bling/vim-airline'

"show changes with last commit
Bundle 'airblade/vim-gitgutter'

"class/modeule browser
Bundle 'majutsushi/tagbar'

"bracet complete
Bundle 'Townk/vim-autoclose'

"For automatically complete
Bundle 'tpope/vim-fugitive'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
"""for c++
Bundle 'vim-scripts/OmniCppComplete'

"Fantasy buffer explorer
Bundle 'jlanzarotta/bufexplorer'

"convenient comment
Bundle 'scrooloose/nerdcommenter'

"Latex development
Bundle 'LaTeX-Box-Team/LaTeX-Box'

"Vimwiki Note
Bundle 'vimwiki/vimwiki'

"Cscope use
Bundle 'vim-scripts/cscope.vim'

"Code insight
Bundle 'wesleyche/SrcExpl'

"Nultiple cursor
Bundle 'terryma/vim-multiple-cursors'

"Compile
Bundle 'xuhdev/SingleCompile'

""Web development
"Emmet
Bundle 'mattn/emmet-vim'
"js syntax
Bundle 'jelera/vim-javascript-syntax' 

"html5
Bundle 'othree/html5.vim'
"Matlab
Bundle 'lazywei/vim-matlab'
"""""""""""""
" ~General~ "
"""""""""""""

set history=50 "keep 50 lines of commands
set shell=$SHELL

"enable filetypee-specfic plugins
filetype on
filetype plugin indent on 
set autoread "autoread when files is changed from outside

"Fast saving
inoremap <silent> <C-s> <Esc>:w<CR>i
nnoremap <silent> <C-s> :w<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

"Fast editing .vimrc
nnoremap <leader>ev :e! $MYVIMRC<CR>

""""""""""""""""""""
" ~User Interface~ "
""""""""""""""""""""

set wildmenu      "Turn on wild menu
set wildignore=*.o,*.obj,*~,*.pdf,*/.git/*,*/.hg/*,*/.svn/*,*.ttf,*.TTF,*.msf,*.jpg,*.xml,*.gz,*.png,
			\*.mp4,*.cbp
syntax on "syntax Highlighting

set showcmd   "let you know the incomplete command

set ruler	"Always show current position
set cursorline 	"highlight current line
set nu	"line number
set showmatch  "show matching bracets
set hlsearch "Highlight search things
set mat=0 "How many tenths of a second to blink 

set ignorecase "Ignore case when searching
set smartcase

set magic "For regular expression 

"Color setting
colorscheme torte
if has("gui_running") 	 
	set guifont=monospace\ 16
	set t_Co=256
end

"encoding settings
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,big5

"Folding
set foldmethod=syntax
set foldnestmax=2
nnoremap <Space> za
""""""""""""""""""""
" ~Cscope and Tag~ "
""""""""""""""""""""

"generate ctags
map<F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" --- Omni complete functions --- 
set completeopt=menuone,longest,preview
set omnifunc=syntaxcomplete#Complete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

"SrcExpl setting
nnoremap  <leader>se :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 8 
let g:SrcExpl_refreshTime = 100 
let g:SrcExpl_jumpKey = "<ENTER>" 
let g:SrcExpl_gobackKey = "<SPACE>" 
let g:SrcExpl_searchLocalDef = 1 
" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>"  

let g:SrcExpl_pluginList = [
      \ "__TagBar__",
	  \ "BufExplorer",
	  \ "_NERD_tree_",
      \ "Source_Explorer"
      \ ]
let g:SrcExpl_isUpdateTags = 0
"make srcexpl for multi-definition more convenient
let g:SrcExpl_prevDefKey = "<F6>"
let g:SrcExpl_nextDefKey = "<F7>"
"""""""""""""""""""""
" ~File Processing~ "
"""""""""""""""""""""

"sth related to tab and indent
set autoindent
set smarttab
set tabstop=4		  
set shiftwidth=4       	  
set expandtab
au Filetype cpp,c set cindent

" Set backspace config
set backspace=eol,start,indent "more useful <BS>

"Persistent undo
set undodir=~/.undodir
set undofile

"redo and undo
inoremap <silent> <C-z> <Esc>ui
inoremap <silent> <C-r> <Esc><C-r>i
nnoremap <silent> <C-z> u

"Case turning
inoremap <silent> <C-u> <Esc>gUUi
nnoremap <silent> <C-u> gUU
vnoremap <silent> <C-u> U
inoremap <silent> <C-l> <Esc>guui
nnoremap <silent> <C-l> guu
vnoremap <silent> <C-l> u

"Search and replace
""" Don't change this two mapping's order(strange contradiction...OTL)
noremap <leader>sw :%s/<C-R><C-W>//g<left><left>
vnoremap <leader>sw <ESC>"syiwgv:s/<C-R>s//g<left><left>


""""""""""""
" ~Moving~ "
""""""""""""
"Widow moving
nnoremap <C-Down>  <C-W>j
nnoremap <C-Left>  <C-W>h
nnoremap <C-Right> <C-W>l
nnoremap <C-Up>    <C-W>k

"Cursor moving
nnoremap <silent> <Left> :call MoveLeft()<CR>
nnoremap <silent> <Right> :call MoveRight()<CR>

"treat long lines as break lines
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
nnoremap $ g$
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"line moving  
nnoremap <silent> <C-S-Up> :m .-2<CR>==
inoremap <silent> <C-S-Up> <Esc>:m .-2<CR>==gi
vnoremap <silent> <C-S-Up> :m '<-2<CR>gv=gv
nnoremap <silent> <C-S-Down> :m .+1<CR>==
inoremap <silent> <C-S-Down> <Esc>:m .+1<cr>==gi
vnoremap <silent> <C-S-Down> :m '>+1<CR>gv=gv 
">:last line selection end

""""""""""""""
" ~QuickFix~ "
""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
noremap <silent> <leader>qf <Esc>:call QFSwitch()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""
" ~NERDTree~ "
""""""""""""""
let g:NERDTreeWinSize=20 
let NERDTreeIgnore=['\~$','\.pdf$','\.swo','\.swp$','\.o$','\.obj$']
let NERDTreeIgnore +=['\.cbp$','\.depend$','\.layout$','\.workspace$'] "add \ first,$ end
"autocmd vimenter * NERDTree "laod NERDTree automatically at beginning
nnoremap <silent> <F5> :NERDTreeToggle<CR>

""""""""""""""
" ~Gitgutter~"
""""""""""""""
let g:gitgutter_enabled=1
highlight clear SignColumn
let g:gitgutter_sign_modified='@'

"""""""""""""""""
" ~Status Line~ "
"""""""""""""""""
"Airline
set laststatus=2
let g:airline_detect_whitespace=0
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="molokai"
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
"let g:airline_symbols.linenr = '♘'
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.whitespace = 'Ξ'

""""""""""""
" ~Tagbar~ "
""""""""""""
let g:tagbar_width=25
let g:tagbar_autoclose=0
let g:tagbar_autofocus=1
nnoremap <silent> <F8> :TagbarToggle<CR>
inoremap <silent> <F8> <Esc>:TagbarToggle<CR>

""""""""""
" ~Note~ "
""""""""""
hi VimwikiHeader1 guifg=#FFFF00
hi VimwikiHeader2 guifg=#0000CD
hi VimwikiHeader3 guifg=#FF00FF
hi VimwikiHeader4 guifg=#00FF00
hi VimwikiHeader5 guifg=#FF0000
let g:vimwiki_use_mouse=1
let g:vimwiki_camel_case=0 "not to use camel case as hyperlink
let g:vimwiki_CJK_length=1 "consider Chinese character when calculating strlen
let wiki_1={}
let wiki_1.path="~/vimwiki"
let wiki_1.html_path="~/vimwiki_html"
"show highlighting when editing
let wiki_1.nested_syntaxes={'python': 'py', 'c++': 'cpp','c': 'c','bash': 'sh','javascript': 'js'}
let g:vimwiki_list=[wiki_1]  "Can add more wiki page to list
nnoremap <F2> :Vimwiki2HTML<CR>
nnoremap <S-F2> :VimwikiAll2HTML<CR>

"""""""""""""
" ~snippet~ "
"""""""""""""
let g:snips_author="sunprinceS (TonyHsu)"
let g:snips_email="sunprince12014@gmail.com"

"""""""""""
" ~LaTeX~ "
"""""""""""
"->look at snippet to know the auto completion
"Latex box
set smartindent
set omnifunc=syntaxcomplete#Complete "turn on omnifunc
let g:tex_flavor = "latex" "Need to add this to use snippet!!!
let g:LatexBox_quickfix=2
"prevent some error when compile synchronously
let g:LatexBox_latexmk_async=1
let g:LatexBox_latexmk_preview_continuously=1
"noremap <leader>lvi :!evince LaTeX_file/%:r.pdf "not easy to use OTL 

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""
" ~Related Functions~ "
"""""""""""""""""""""""""""""""""
function! MoveRight()
	if col(".") == col("$")-1
		normal j0
	else
		normal l
	endif
endfunction
"""""""""""""""""""""""""""""""""
function! MoveLeft()
	if col(".") == 1
		normal k$
	else
		normal h
	endif
endfunction
"""""""""""""""""""""""""""""""""""
function! QFSwitch()
redir => ls_output
execute ':silent! ls'
redir END

let exists = match(ls_output, "[Quickfix List")
if exists == -1
execute ':copen'

execute ':cclose'
endif
endfunction
"""""""test  function"""""""""""""""""(from LeoMao's pika-vim)
"function! s:VSetSearch(cmdtype)
"	let temp = @s
"	norm! gv"sy
"	let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
"	let @s = temp
"endfunction
        
"xnoremap  * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
"xnoremap  # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>
