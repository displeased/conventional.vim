" conventional.vim - Adds support for conventional commits
" Maintainer: Mickey Polito <me@displeased.me>
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

augroup conventional
    au FileType gitcommit inoreabbrev <buffer> BB BREAKING CHANGE:
    au FileType gitcommit nnoremap    <buffer> i  i<C-r>=<sid>commit_type()<CR>
augroup END

fun! s:commit_type()
  call complete(1, s:commit_types)
  nunmap <buffer> i
  return ''
endfun

