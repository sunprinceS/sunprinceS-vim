sunprinceS-vim
========
Author : TonyHsu

Version: 1.6.2

vim configuration:
Use [Vundle](https://github.com/gmarik/Vundle.vim)

To use this configuration:

![Alt text](http://i.imgur.com/VGNImAE.png)

Dependencies:

1. Vim 7.4+
2. Ctags
3. g++

Included Plugins:
======
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [tagbar](https://github.com/majutsushi/tagbar)
* [undotree](https://github.com/mbbill/undotree)
* [mru.vim](https://github.com/vim-scripts/mru.vim)
* [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
* [airline](https://github.com/bling/vim-airline)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [snippet](https://github.com/honza/vim-snippets)
* [snipmate](https://github.com/garbas/vim-snipmate)
* [OmniCppComplete](https://github.com/vim-scripts/OmniCppComplete)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [cscope](https://github.com/vim-scripts/cscope.vim)
* [MultiCursor](https://github.com/terryma/vim-multiple-cursors)
* [python-syntax](https://github.com/hdima/python-syntax)
* [Emmet-vim](https://github.com/mattn/emmet-vim)
* [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
* [html5.vim](https://github.com/othree/html5.vim)
* [Tabular](https://github.com/godlygeek/tabular)
* [Ag.vim](https://github.com/rking/ag.vim)
* [FZF](https://github.com/junegunn/fzf)
* [surround](https://github.com/tpope/vim-surround)

Common Shortcut:
=======

General:
-----
+ fast saving`<Ctrl-s>`
+ line switching `<Ctrl-Shift-↑> <Ctrl-Shift-↓>` 
+ window moving `<Ctrl-↑>` for move up,things like that...
+ redo and undo `<Ctrl-z>` `<Ctrl-r>`
+ useful searching `\sw`
+ open/close the folding `<Space>`
+ QuickFixToggle `\qf`
+ generate ctags `<F4>`
+ delete traling space `<A-n>`
+ Alignment reference line `<A-Right>` `<A-Left>`
+ copy to and paste from clipboard `<C-c>`  `<C-v>`

Plugin:
------
+ NERDTree `<F5>`
	+ open new horizontal split window `i`
	+ open new vertical split window `s`
	+ open new tab `t`
	+ show hidden files in tree `I`
+ Tagbar `<F8>`
+ Snipmate `<Tab>` 
* MultipleCursor
    + FocusCurloc `<C-m>`
    + PassCurLoc and findNext  `<C-x>`
    + unFocusCurLoc `<C-p>`
* Emmet
    + leaderKey `<C-a>`
+ Bufexplorer `\be` `\bs` `\bv`
+ NerdCommenter
	+ comment toggle `\c<space>`
	+ append comment `\cA`
* Tabularize
	+ `\t` `\tr`

Programming Language:
-------
+ SingleCompile `<F9>`
+ SingleCompilenRun `<F10>`
	->optimize <C-F9> <C-F10>
+ view last output `\v`
