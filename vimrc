"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   _____                           _                         "
"  / ___/__  ______     ____  _____(_)___  ________           "
"  \__ \/ / / / __ \   / __ \/ ___/ / __ \/ ___/ _ \          "
" ___/ / /_/ / / / /  / /_/ / /  / / / / / /__/ ___/          "
"/____/\__,_/_/ /_/  / .___/_/  /_/_/ /_/\___/\___/ -Vim 1.6.2"
"                   /_/                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: TonyHsu
"
" Version:1.6.2
"
" Sections:
"	-> Package Management
"	-> User Interface
"	-> General
"  Related_functions:

"-------------------------

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

"Recently file
Bundle 'vim-scripts/mru.vim'

"pretty status
Bundle 'bling/vim-airline'

"Powerful git wrapper
Bundle 'tpope/vim-fugitive'

"class/modeule browser
Bundle 'majutsushi/tagbar'

"For automatically complete
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

Bundle 'mbbill/undotree'

"Cscope use
Bundle 'vim-scripts/cscope.vim'

"Multiple cursor
Bundle 'terryma/vim-multiple-cursors'

"Compile
Bundle 'xuhdev/SingleCompile'

"Python syntax
Bundle 'hdima/python-syntax'

""Web development
"Emmet
Bundle 'mattn/emmet-vim'

"js syntax
Bundle 'jelera/vim-javascript-syntax'

"html5
Bundle 'othree/html5.vim'

"Alignment
Bundle 'godlygeek/tabular'

"Tmux-vim seamless switch
Bundle 'christoomey/vim-tmux-navigator'

"""""""""""""
" ~General~ "
"""""""""""""

set history=50 "keep 50 lines of commands
set shell=$SHELL

"enable filetypee-specfic plugins
filetype on
filetype plugin indent on
set autoread "autoread when files is changed from outside


" When vimrc is edited, reload it
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

"Fast editing .vimrc
nnoremap <leader>ev :e! $MYVIMRC<CR>
set magic "For regular expression

"encoding settings
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,big5

""""""""""""""""""""
" ~User Interface~ "
""""""""""""""""""""

if has("gui_running")
  set guioptions-=m "remove menubar
  set guioptions-=r "remove scrollbar
endif

set wildmenu      "Turn on wild menu
set wildignore=*.o,*.obj,*~,*.pdf,*/.git/*,*/.hg/*,*/.svn/*,*.ttf,*.TTF,*.msf,*.jpg,*.xml,*.gz,*.png,
			\*.mp4,*.cbp
syntax on    "syntax Highlighting
let python_highlight_all = 1

set showcmd 	"let you know the incomplete command
set mouse=a 	"mouse function
set ruler	"Always show current position
set cursorline 	"highlight current line
set nu	"line number
set rnu "line number (relative number)
set showmatch  "show matching bracets
set hlsearch "Highlight search things
set incsearch "make search like modern browser
set mat=0 "How many tenths of a second to blink
set cino+=g0
set ignorecase "Ignore case when searching
set smartcase

"tab alignment
set list

"Show the standard line
nn <silent> <A-Left> :call ReferenceLine('sub')<CR>
nn <silent> <A-Right> :call ReferenceLine('add')<CR>

"Color setting
colorscheme sun
set t_Co=256

if has("gui_running")
	set guifont=Monaco\ for\ Powerline\ 16
end

"Folding
set foldmethod=syntax
set foldnestmax=2
nnoremap <Space> za

""""""""""""""""""""
" ~Cscope and Tag~ "
""""""""""""""""""""

"generate ctags
map<F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif


"sth related to tab and indent
set autoindent
set noexpandtab 	"for tab show
set smarttab
set tabstop=4
set shiftwidth=4

" Set backspace config
set backspace=eol,start,indent "more useful <BS>
set whichwrap+=<,>,[,]

au Filetype cpp,c set cindent
au Filetype cpp,c setl tags+=~/.vim/tags/cpptags

""""""""""""""
" ~QuickFix~ "
""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
noremap <silent> <leader>qf <Esc>:call QFSwitch()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""
" ~Custom Setting~ "
""""""""""""""""""""
set rtp+=~/.vim/setting/
runtime setting/common.vim
runtime setting/plugin.vim
runtime setting/key_mapping.vim

"""""""""""""""""""""""
" ~Related Functions~ "
"""""""""""""""""""""""
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

fu! ReferenceLine(t)  "ref : http://zshou.is-programmer.com/posts/39381
    let ccnum = &cc
    if ccnum == '' | let ccnum = 0 | en
    let csw = &sw
    if a:t == 'add'
        let ccnum = ccnum + csw
        exec "setl cc=".ccnum
    elsei a:t == 'sub'
        let ccnum = ccnum - csw
        if ccnum >= 0 | exec "setl cc=".ccnum | en
    en
endf
function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction
