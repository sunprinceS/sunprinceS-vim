" Vim syntax file
" Language:	generic configure file
" Maintainer:	TonyHsu (sunprince12014@gmail.com)
" Last Change:	2015 Oct 4
"It is modified from the previous conf file in $VIMRUNTIME/syntax

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword configkeyword setw set bind nextgroup=configparam
syn keyword configoption on off
syn match configoption " \d\+"
"syn match configoption 
syn match configparam " -\w*. "

syn keyword	confTodo	contained TODO FIXME XXX 
" Avoid matching "text#text", used in /etc/disktab and /etc/gettytab
syn match	confComment	"^#.*" contains=confTodo
syn match	confComment	"\s#.*"ms=s+1 contains=confTodo
syn region	confString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	confString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link confComment	Comment
hi def link confTodo	Todo
hi def link confString	String
hi def link configkeyword Keyword
hi def link configparam Operator
hi def link configoption Special

let b:current_syntax = "conf"

" vim: ts=8 sw=2
