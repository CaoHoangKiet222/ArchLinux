" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 33, 'bg': -1}

" Draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

" Draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

" Add a shadow window, value is equal to 100 will disable shadow
let g:rnvimr_shadow_winblend = 90

nmap <space>r :RnvimrToggle<CR>
