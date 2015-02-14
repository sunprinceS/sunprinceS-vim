sunprinceS-vim
========
Author : TonyHsu

Version: 1.3.1

vim configuration:
Use [Vundle](https://github.com/gmarik/Vundle.vim)

To use this configuration:

Dependencies:

1. Vim 7.4+
2. Ctags
3. g++
4. latexmk
5. cscope

Included Plugins:
======
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [airline](https://github.com/bling/vim-airline)
* [gitgutter](https://github.com/airblade/vim-gitgutter)
* [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
* [tagbar](https://github.com/majutsushi/tagbar)
* [snippet](https://github.com/honza/vim-snippets)
* [snipmate](https://github.com/garbas/vim-snipmate)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [vimwiki](https://github.com/vimwiki/vimwiki)
* [LatexBox](https://github.com/LaTeX-Box-Team/LaTeX-Box)
* [cscope](https://github.com/vim-scripts/cscope.vim)
* [SrcExpl](https://github.com/wesleyche/SrcExpl)
* OmnicppComplete

Common Shortcut:
=======
General:
-----
+ fast saving`<Ctrl-s>`
+ line switching `<Ctrl-Shift-↑> <Ctrl-Shift-↓>` 
+ redo and undo `<Ctrl-z>` `<Ctrl-r>`
+ upper-case 2 lower-case `<Ctrl-u>` `<Ctrl-l>`
+ useful searching `\sw`
+ folding 
	+ open/close the folding `<Space>`
+ QuickFixToggle `\qf`
+ ctags
	+ generate tags `<F4>`
	+ go to definition `<C-]>`
	+ back to last page `<C-t>`
	+ if tags are more than one->`\s` to view whole selection

Plugin:
------
+ NERDTree `<F5>`
	+ open new horizontal split window `i`
	+ open new vertical split window `s`
	+ show hidden files in tree `I`
+ Tagbar `<F8>`
+ Snipmate `<Tab>` 
+ SrcExpl 
	+ switch to source explorer `\se` 
	+ refresh the tags `<F12>`
+ Bufexplorer `\be` `\bs` `\bv`
+ vimwiki Honepage `\ww`
+ LatexBox
	+ edit synchronously(with .pdf) and compile `\ll`
	+ edit synchronously(with .dvi) @terminal `latexmk <fileName>`
+ NerdCommenter
	+ comment toggle `\c<space>`
	+ multi-line comment `\cm` or `\cn` 
	+ append comment `\cA`

Programming Language:
-------
+ SingleCompile `<F9>`
+ SingleCompilenRun `<F10>`
	->optimize <C-F9> <C-F10>
+ view last output `\v`

Todo:
+ python development
+ html development
+ cscope -> to make DEBUG more quiclkly

