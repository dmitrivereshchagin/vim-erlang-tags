function! s:NameUnderCursor() abort
  let l:iskeyword = &l:iskeyword
  setlocal iskeyword+=:,?
  let l:name = substitute(expand('<cword>'), '\M\C^?MODULE:', '', '')
  let &l:iskeyword = l:iskeyword
  return l:name
endfunction

function! erlang#tags#RHS(command, ...) abort
  let l:count = get(a:000, 0, '')
  return ":\<C-U>" . l:count . a:command . ' ' . s:NameUnderCursor() . "\<CR>"
endfunction
