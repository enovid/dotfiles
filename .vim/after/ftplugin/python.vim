if g:pymode_motion

    nnoremap <buffer> ]]  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    nnoremap <buffer> [[  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    nnoremap <buffer> ]c  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    nnoremap <buffer> [c  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    nnoremap <buffer> ]M  :<C-U>call pymode#motion#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    nnoremap <buffer> [M  :<C-U>call pymode#motion#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    onoremap <buffer> ]]  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    onoremap <buffer> [[  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    onoremap <buffer> ]c  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    onoremap <buffer> [c  :<C-U>call pymode#motion#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    onoremap <buffer> ]M  :<C-U>call pymode#motion#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    onoremap <buffer> [M  :<C-U>call pymode#motion#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    vnoremap <buffer> ]]  :call pymode#motion#vmove('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    vnoremap <buffer> [[  :call pymode#motion#vmove('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    vnoremap <buffer> ]M  :call pymode#motion#vmove('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    vnoremap <buffer> [M  :call pymode#motion#vmove('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    onoremap <buffer> C  :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 0)<CR>
    onoremap <buffer> ac :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 0)<CR>
    onoremap <buffer> ic :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 1)<CR>
    vnoremap <buffer> ac :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 0)<CR>
    vnoremap <buffer> ic :<C-U>call pymode#motion#select_c('^<Bslash>s*class<Bslash>s', 1)<CR>

    onoremap <buffer> M   :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    onoremap <buffer> am  :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    onoremap <buffer> im  :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 1)<CR>
    vnoremap <buffer> am  :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    vnoremap <buffer> im  :<C-U>call pymode#motion#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=@', '^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 1)<CR>

endif
