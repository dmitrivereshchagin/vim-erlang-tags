let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'execute')

nnoremap <buffer> <expr> <C-]>  erlang#tags#RHS('tag', v:count1)
let b:undo_ftplugin .= '|silent! nunmap <buffer> <C-]>'

nnoremap <buffer> <expr> <C-LeftMouse>  erlang#tags#RHS('tag', v:count1)
let b:undo_ftplugin .= '|silent! nunmap <buffer> <C-LeftMouse>'

nnoremap <buffer> <expr> g<LeftMouse>  erlang#tags#RHS('tag', v:count1)
let b:undo_ftplugin .= '|silent! nunmap <buffer> g<LeftMouse>'

nnoremap <buffer> <expr> g]  erlang#tags#RHS('tselect')
let b:undo_ftplugin .= '|silent! nunmap <buffer> g]'

nnoremap <buffer> <expr> g<C-]>  erlang#tags#RHS('tjump')
let b:undo_ftplugin .= '|silent! nunmap <buffer> g<C-]>'

nnoremap <buffer> <expr> <C-W><C-]>  erlang#tags#RHS('stag', v:count1)
let b:undo_ftplugin .= '|silent! nunmap <buffer> <C-W><C-]>'

nnoremap <buffer> <expr> <C-W>]  erlang#tags#RHS('stag', v:count1)
let b:undo_ftplugin .= '|silent! nunmap <buffer> <C-W>]'

nnoremap <buffer> <expr> <C-W>g]  erlang#tags#RHS('stselect')
let b:undo_ftplugin .= '|silent! nunmap <buffer> <C-W>g]'

nnoremap <buffer> <expr> <C-W>g<C-]>  erlang#tags#RHS('stjump')
let b:undo_ftplugin .= '|silent! nunmap <buffer> <C-W>g<C-]>'

nnoremap <buffer> <expr> <C-W>}  erlang#tags#RHS('ptag', v:count1)
let b:undo_ftplugin .= '|silent! nunmap <buffer> <C-W>}'

nnoremap <buffer> <expr> <C-W>g}  erlang#tags#RHS('ptjump')
let b:undo_ftplugin .= '|silent! nunmap <buffer> <C-W>g}'
