
setlocal shiftwidth=2
iabbrev <buffer> df delete from
" send function to slimux with CTRL+f
nnoremap <buffer> <c-f> 0V%:SlimuxREPLSendSelection<CR>%
let b:delimitMate_autoclose = 0
