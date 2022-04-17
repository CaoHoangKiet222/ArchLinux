set laststatus=2

"if !has('gui_running')
"  set t_Co=256
"endif

" We don't need to see things like -- INSERT -- anymore
set noshowmode

"let g:lightline = {
"      \ 'colorscheme': 'materia',
"      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
"      \ 'subseparator': { 'left': "\ue0b1", 'right': '\ue0b3' }
"      \}
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"function! AccentDemo()
"  let keys = ['a','b','c','d','e','f','g','h']
"  for k in keys
"    call airline#parts#define_text(k, k)
"  endfor
"  call airline#parts#define_accent('a', 'red')
"  call airline#parts#define_accent('b', 'green')
"  call airline#parts#define_accent('c', 'blue')
"  call airline#parts#define_accent('d', 'yellow')
"  call airline#parts#define_accent('e', 'orange')
"  call airline#parts#define_accent('f', 'purple')
"  call airline#parts#define_accent('g', 'bold')
"  call airline#parts#define_accent('h', 'italic')
"  let g:airline_section_a = airline#section#create(keys)
"endfunction
"autocmd VimEnter * call AccentDemo()

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode',' ','branch'])
  " let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
  let g:airline_section_c = airline#section#create(['filetype'])
  let g:airline_section_x = airline#section#create(['%P'])
  let g:airline_section_y = airline#section#create(['%B'])
  let g:airline_section_z = airline#section#create_right(['%l','%c'])
endfunction
autocmd VimEnter * call AirlineInit()

