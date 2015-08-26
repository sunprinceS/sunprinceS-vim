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
"	-> User Interface
"	-> General

"  Related_functions:

"-------------------------

""""""""""""""""""""
" ~Custom Setting~ "
""""""""""""""""""""
set rtp+=~/.vim/setting/
runtime setting/vundle.vim
runtime setting/common.vim
runtime setting/plugin.vim
runtime setting/key_mapping.vim

"""""""""""""
" ~General~ "
"""""""""""""
set history=50 "keep 50 lines of commands
set shell=$SHELL

"enable filetypee-specfic plugins
filetype on
filetype plugin indent on
set autoread "autoread when files is changed from outside

"Filetype redef
autocmd BufRead,BufNewFile *.html.erb set filetype=html

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
set noexpandtab
set smarttab
set tabstop=4
set shiftwidth=4

" Set backspace config
set backspace=eol,start,indent "more useful <BS>

"arrow moving
set whichwrap+=<,>,[,]

"""""""""""""""""""""""
" ~Related Functions~ "
"""""""""""""""""""""""
runtime setting/functions.vim
