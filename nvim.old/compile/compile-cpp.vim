set hidden

function! TermWrapperVertical(command) abort
		let buffercmd = 'vnew'
	exec buffercmd
	exec 'term ' . a:command
	exec 'setlocal nornu nonu'
	exec 'startinsert'
	autocmd BufEnter <buffer> startinsert
endfunction

function! TermWrapperHorizontal(command) abort
		let buffercmd = 'new'
	exec buffercmd
	exec 'term ' . a:command
	exec 'setlocal nornu nonu'
	exec 'startinsert'
	autocmd BufEnter <buffer> startinsert
endfunction


command! -nargs=1 -complete=file CompileAndRunWithFile call TermWrapperVertical(printf('g++ -std=c++11 %s && ./a.out %s', expand('%s'), <q-args>))
command! -nargs=0 CompileAndRunVertical call TermWrapperVertical(printf('g++ -std=c++11 %s && ./a.out', expand('%')))
command! -nargs=0 CompileAndRunHorizontal call TermWrapperHorizontal(printf('g++ -std=c++11 %s && ./a.out', expand('%')))

autocmd FileType cpp nnoremap <silent><leader>fn :CompileAndRunVertical<CR>
autocmd FileType cpp nnoremap <silent><leader>fb :CompileAndRunHorizontal<CR>

autocmd FileType cpp nnoremap <silent><leader>fw :FloatermNew --height=0.8 --width=0.5 --wintype=floating --name=Application --autoclose=0 g++ -std=c++17 -O2 -Wall % -o %:r && ./%:r<CR>
