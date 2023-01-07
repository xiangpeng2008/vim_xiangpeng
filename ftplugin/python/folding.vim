

setlocal foldmethod=expr
"setlocal foldmethod=indent
setlocal foldlevel=99

" add . as word separator
setlocal iskeyword-=.
" remove _ from word separator
setlocal iskeyword+=_
 "by default Vim will ignore lines beginning with a # character when using indent folding
"setlocal foldignore=
setlocal foldminlines=2

" to see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

setlocal foldexpr=<SID>GetPythonFold(v:lnum)

"function! GetPotionFold(lnum)
    "if getline(a:lnum) =~? '\v^\s*$'
        "return '-1'
    "endif

    "return '0'
"endfunction

function! s:IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction

function! s:NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum + 1

    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif

        let current += 1
    endwhile

    return -2
endfunction

function! s:GetPythonFold(lnum)
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif

    let this_indent = s:IndentLevel(a:lnum)
    let next_indent = s:IndentLevel(s:NextNonBlankLine(a:lnum))

    if next_indent == this_indent
        return this_indent
    elseif next_indent < this_indent
        return this_indent
    elseif next_indent > this_indent
        return '>' . next_indent
    endif
endfunction


