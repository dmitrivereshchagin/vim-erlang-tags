let s:undo_ftplugin = []

nnoremap <buffer> <expr> <C-]>          erlang#tags#RHS(v:count1, 'tag')
nnoremap <buffer> <expr> <C-LeftMouse>  erlang#tags#RHS(v:count1, 'tag')
nnoremap <buffer> <expr> g<LeftMouse>   erlang#tags#RHS(v:count1, 'tag')
nnoremap <buffer> <expr> g]             erlang#tags#RHS('tselect')
nnoremap <buffer> <expr> g<C-]>         erlang#tags#RHS('tjump')

call extend(s:undo_ftplugin, [
    \ 'silent! nunmap <buffer> <C-]>',
    \ 'silent! nunmap <buffer> <C-LeftMouse>',
    \ 'silent! nunmap <buffer> g<LeftMouse>',
    \ 'silent! nunmap <buffer> g]',
    \ 'silent! nunmap <buffer> g<C-]>',
    \])

nnoremap <buffer> <expr> <C-W><C-]>     erlang#tags#RHS(v:count1, 'stag')
nnoremap <buffer> <expr> <C-W>]         erlang#tags#RHS(v:count1, 'stag')
nnoremap <buffer> <expr> <C-W>g]        erlang#tags#RHS('stselect')
nnoremap <buffer> <expr> <C-W>g<C-]>    erlang#tags#RHS('tjump')

call extend(s:undo_ftplugin, [
    \ 'silent! nunmap <buffer> <C-W><C-]>',
    \ 'silent! nunmap <buffer> <C-W>]',
    \ 'silent! nunmap <buffer> <C-W>g]',
    \ 'silent! nunmap <buffer> <C-W>g<C-]>',
    \])

if exists('b:undo_ftplugin')
  call insert(s:undo_ftplugin, b:undo_ftplugin)
endif
let b:undo_ftplugin = join(s:undo_ftplugin, '|')
