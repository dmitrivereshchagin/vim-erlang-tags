function! s:Cword(iskeyword) abort
  let l:isk = &l:iskeyword
  let &l:iskeyword = a:iskeyword
  let l:cword = expand('<cword>')
  let &l:iskeyword = l:isk
  return l:cword
endfunction

function! s:NameUnderCursor() abort
  let l:name = s:Cword('@,48-57,?,@-@,_,:')
  " If fully qualified name is specified using atoms, use it as is.
  if l:name =~# '\m^[a-z][0-9@_A-Za-z]*:[a-z][0-9@_A-Za-z]*$'
    return l:name
  endif
  " If fully qualified name starts with ?MODULE, convert it to implicitly
  " qualified one.
  if l:name =~# '\m^?MODULE:[a-z][0-9@_A-Za-z]*$'
    return l:name[8:]
  endif
  " Otherwise, do not consider names containing colons.
  return s:Cword('@,48-57,?,@-@,_')
endfunction

function! erlang#tags#RHS(command, ...) abort
  let l:count = get(a:000, 0, '')
  let l:name = s:NameUnderCursor()
  return ":\<C-U>" . l:count . a:command . ' ' . l:name . "\<CR>"
endfunction
