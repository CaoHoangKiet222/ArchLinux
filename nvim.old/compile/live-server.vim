set hidden
function! TermWrapper() abort
    let link = expand('%:p:h')
    execute "silent !cd " . link . " && live-server > /dev/null &"
endfunction

command! -nargs=0 GoLiveServer call TermWrapper()

autocmd FileType html nnoremap <silent><leader>fw :GoLiveServer<CR>
