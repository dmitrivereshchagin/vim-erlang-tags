if exists('g:loaded_erlang_tags')
  finish
endif
let g:loaded_erlang_tags = 1

let s:ESCRIPT = expand('<sfile>:p:h') . '/tags.escript'

command -nargs=* -complete=file ErlangTags
    \ execute '!escript' s:ESCRIPT empty(<q-args>) ? '.' : <q-args>
