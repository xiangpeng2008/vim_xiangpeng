
setlocal shiftwidth=2
iabbrev <buffer> df delete from
iabbrev sf select from
iabbrev uf update from
iabbrev ip inner parse "<esc>$a"<esc>
" send function to slimux with CTRL+f
nnoremap <buffer> <c-f> 0V%:SlimuxREPLSendSelection<CR>%
let b:delimitMate_autoclose = 0

" Q mapping
" press <leader>ti to look at first 10 rows
nnoremap <buffer> <leader>ti yiwo<esc>pA til 10<esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>co to count table
nnoremap <buffer> <leader>co yiwo<esc>pIcount <esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>me to show meta of table
nnoremap <buffer> <leader>me yiwo<esc>pImeta <esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>to to do toExcel table
nnoremap <buffer> <leader>to yiwo<esc>pa<esc>ItoExcel1 <esc>:SlimuxREPLSendLine<CR>ddk
"nnoremap <buffer> <leader>to yiwo<esc>pa"<esc>ItoExcel1"<esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>qs to show qstudioOb as currentObj
nnoremap <buffer> <leader>qs yiwo<esc>pIqstudioOb:<esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>si to show sizeMB of table
nnoremap <buffer> <leader>si yiwo<esc>pIsizeMB <esc>:SlimuxREPLSendLine<CR>ddk
" press <leader>ov to show overview table
nnoremap <buffer> <leader>ov yiwo<esc>pIoverview <esc>:SlimuxREPLSendLine<CR>ddk


