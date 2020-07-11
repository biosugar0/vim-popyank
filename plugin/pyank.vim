scriptencoding utf-8

if exists('g:loaded_pyank') || has('nvim')
  finish
endif

let g:loaded_pyank = 1

command! -nargs=0 Pyank call pyank#exec()
