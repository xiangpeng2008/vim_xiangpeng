" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.k		setfiletype k
  au! BufRead,BufNewFile *.q		setfiletype q
  au! BufRead,BufNewFile *.s		setfiletype sql
  au! BufRead,BufNewFile *.py		setfiletype python
augroup END
