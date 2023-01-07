nnoremap z/ :if <SID>AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
function! s:AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction



nnoremap gf <C-w>gf:call <SID>FavorExistingTabPage()<CR>
function! s:FavorExistingTabPage()
    let l:bufNr = bufnr('')
    for l:i in range(1, tabpagenr('$'))
        if l:i == tabpagenr()
            continue    " Skip current.
        endif
        let l:winIndex = index(tabpagebuflist(l:i), l:bufNr)
        if l:winIndex != -1
            " We found the buffer elsewhere.
            if l:i >= tabpagenr()
                let l:i -= 1 " Adapt to removal of tab page before the current.
            endif

            close!

            execute l:i . 'tabnext'
            execute (l:winIndex + 1) . 'wincmd w'
            break
        endif
    endfor
endfunction


inoremap <special> <expr> <Esc>[200~ <SID>XTermPasteBegin()
"inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! s:XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" when I try to make it local with <SID> and s:, it didn't work
" custom tab pages line
"set tabline=%!<SID>MyTabLine()  
set tabline=%!Xiangpeng_TabLine()  
"set tabline=call <SID>Xiangpeng_TabLine()  
" to remove, now we have ctrl-p
function! Xiangpeng_TabLine()
  let s = ''
  " loop through each tab page
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#' " WildMenu
    else
      let s .= '%#Title#'
    endif
    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T '
    " set page number string
    let s .= i + 1 . ''
    " get buffer names and statuses
    let n = ''  " temp str for buf names
    let m = 0   " &modified counter
    let buflist = tabpagebuflist(i + 1)
    " loop through each buffer in a tab
    for b in buflist
      if getbufvar(b, "&buftype") == 'help'
        " let n .= '[H]' . fnamemodify(bufname(b), ':t:s/.txt$//')
      elseif getbufvar(b, "&buftype") == 'quickfix'
        " let n .= '[Q]'
      elseif getbufvar(b, "&modifiable")
        let n .= fnamemodify(bufname(b), ':t') . ', ' " pathshorten(bufname(b))
      endif
      if getbufvar(b, "&modified")
        let m += 1
      endif
    endfor
    " let n .= fnamemodify(bufname(buflist[tabpagewinnr(i + 1) - 1]), ':t')
    let n = substitute(n, ', $', '', '')
    " add modified label
    if m > 0
      let s .= '+'
      " let s .= '[' . m . '+]'
    endif
    if i + 1 == tabpagenr()
      let s .= ' %#TabLineSel#'
    else
      let s .= ' %#TabLine#'
    endif
    " add buffer names
    if n == ''
      let s.= '[New]'
    else
      let s .= n
    endif
    " switch to no underlining and add final space
    let s .= ' '
  endfor
  let s .= '%#TabLineFill#%T'
  " right-aligned close button
  " if tabpagenr('$') > 1
  "   let s .= '%=%#TabLineFill#%999Xclose'
  " endif
  return s
endfunction

