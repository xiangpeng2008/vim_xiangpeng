
" skip /opt/homebrew/Cellar/vim/9.0.0800/share/vim/vim90/ftplugin/python.vim
let b:did_ftplugin = 1
"setlocal tabstop=4
"setlocal softtabstop=4
"setlocal shiftwidth=4
"setlocal textwidth=79
"setlocal expandtab
"setlocal autoindent
" commented for copilot
"setlocal fileformat=unix

" enable all Python syntax highlighting features
let python_highlight_all=1

augroup autocmd_python
    autocmd!
    autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END


" send function to slimux with CTRL+f
"nmap <buffer> <c-f> 0V]M<c-c>j
iabbrev <buffer> pdf pd.DataFrame(
iabbrev <buffer> pds pd.Series(
iabbrev <buffer> deff def():<left><left><left>
iabbrev <buffer> iff if:<left>
iabbrev <buffer> plib load('/sqpc/scratch/intraday/zhangxia/lib/prototypeLib.ipy')
set iskeyword-=.
if $TERM !=# "xterm-kitty"
    nnoremap <buffer> <leader>q Oq<esc>:SlimuxREPLSendLine<CR>dd
else
    "nnoremap <buffer> <leader>q Oq<esc><Plug>SlimeLineSend
    nnoremap <buffer> <leader>q Oq<esc>:<c-u>call slime#send_lines(v:count1)<cr>dd
endif

" press <leader>h to show coloredHelp in python
nnoremap <buffer> <leader>h IcoloredHelp(<esc> A) <esc>:SlimuxREPLSendLine<CR>

" press <leader>pl to plot in python
nnoremap <buffer> <leader>pl Iplot(<esc> A) <esc>:SlimuxREPLSendLine<CR>
" send function to slimux with CTRL+[
"nnoremap <buffer> <c-f> 0V]z<c-c>j
nnoremap <buffer> <c-f> 0V]z<Plug>SlimeRegionSend<cr>
nnoremap <leader>pd Oimport pdb; pdb.set_trace()<esc>j



