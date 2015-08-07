" Function:
"-----------------------

function! QFSwitch()
	redir => ls_output
	execute ':silent! ls'
	redir END

	let exists = match(ls_output, "[Quickfix List")
	if exists == -1
		execute ':copen'
	else
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
