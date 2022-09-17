function! s:Ident() abort
  let l:iskeyword = &l:iskeyword
  setlocal iskeyword+=:,?
  let l:ident = substitute(expand('<cword>'), '\M\C^?MODULE:', '', '')
  let &l:iskeyword = l:iskeyword
  return l:ident
endfunction

function! erlang#tags#RHS(...) abort
  return ":\<C-U>" . join(add(copy(a:000), s:Ident())) . "\<CR>"
endfunction
