function re_edit_all#ReEditAll() abort
  let l:tabpagenr = tabpagenr()
  let l:winnr = winnr()
  if &confirm
    set noconfirm
    tabdo windo edit!
    set confirm
  else
    tabdo windo edit
  endif
  exe 'tabnext' l:tabpagenr
  exe l:winnr . "wincmd w"
endfunction
