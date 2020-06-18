set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

let g:python3_host_prog = '/usr/bin/python3'

set inccommand=nosplit

" don't put tildes at the start of empty lines at the end of a buffer
set fillchars=eob:\ 

" Open lazygit
nnoremap <silent> <Leader>' :call OpenTerm('lazygit')<CR>

" Quit term buffer with ESC
augroup TermHandling
  autocmd!
  " " Turn off line numbers etc
  autocmd TermOpen * setlocal listchars= nonumber norelativenumber
  autocmd TermOpen * startinsert
  "autocmd TermOpen * tnoremap <Esc> <c-\><c-n>
  "autocmd! FileType fzf tnoremap <buffer> <Esc> <c-c>
augroup END

function! OpenTerm(cmd)
  new | call termopen(a:cmd, {'on_exit': function('s:OnExit')})
endfunction

function! s:OnExit(job_id, code, event) dict
  if a:code == 0
    bd!
  endif
endfunction


" Firenvim config

" Use python filetype for jupyter notebook textareas
au BufEnter localhost_*.txt set filetype=python

if exists('g:started_by_firenvim')
    set laststatus=0
    set guifont=:h11
    nnoremap <C-CR> :wq<CR>
    nnoremap <Leader>M :set ft=markdown\|set spell<CR>
else
    set laststatus=2
endif

let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }

let fc = g:firenvim_config['localSettings']
let fc['http://localhost:.*'] = {'takeover': 'always', 'priority': 1}
let fc['https://binarysearch.io/*'] = {'takeover': 'always', 'priority': 1}
