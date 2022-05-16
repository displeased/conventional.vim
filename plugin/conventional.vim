" conventional.vim - Adds support for conventional commits
" Maintainer: Mickey Polito <mwpolito1@gmail.com>
" Version: 0.1.0
" License: MIT 

let s:commit_types = [
            \ 'chore: ',
            \ 'refactor: ',
            \ 'docs: ',
            \ 'build: ',
            \ 'fix: ', 
            \ 'ci: ',
            \ 'style: ',
            \ 'test: ',
            \ 'perf: ',
            \ 'feat: ',
            \ 'revert: ',
            \ ]

au FileType gitcommit inoreabbrev <buffer> BB BREAKING CHANGE:
au FileType gitcommit nnoremap    <buffer> i  i<C-r>=<sid>commit_type()<CR>

fun! s:commit_type()
  call complete(1, s:commit_types)
  nunmap <buffer> i
  return ''
endfun

