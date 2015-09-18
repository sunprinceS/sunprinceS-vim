" Package Management:

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

"powerful tool in html
Bundle 'tpope/vim-surround'

"Bootstrap autocomplete
Bundle 'bonsaiben/bootstrap-snippets'

"Bundle 'vhda/verilog_systemverilog.vim'
