if exists("b:current_python_syntax")
    finish
endif

let b:current_python_syntax = "python"

syntax keyword potionKeyword for abd
highlight link potionKeyword Keyword
