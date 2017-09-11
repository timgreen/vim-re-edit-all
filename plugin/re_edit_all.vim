if exists('g:loaded_re_edit_all') && g:loaded_re_edit_all
  finish
endif

command ReEditAll call re_edit_all#ReEditAll()

if !exists('g:vim_re_edit_all_map_keys')
  let g:re_edit_all_map_keys = 1
endif
if g:re_edit_all_map_keys
  nnoremap <leader>r :ReEditAll<CR>
endif

let g:loaded_re_edit_all = 1
