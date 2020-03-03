set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

let g:python3_host_prog = '/usr/bin/python3'

set inccommand=nosplit

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
if exists('g:started_by_firenvim')
    set laststatus=0
    set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
else
    set laststatus=2
endif

nnoremap <Leader>G :set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20\|set ft=python<CR><CR>
