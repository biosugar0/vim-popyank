scriptencoding utf-8

if exists('g:loaded_pyank') || has('nvim')
  finish
endif

let g:loaded_pyank = 1

command! -nargs=0 PopUpYank call pyank#exec()
nnoremap <silent> <Plug>(PopUpYank) :<C-u>PopUpYank<CR>
