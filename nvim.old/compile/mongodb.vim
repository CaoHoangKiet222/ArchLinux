lua << EOF
require 'mongo-nvim'.setup {
  -- connection string to your mongodb
  connection_string = "mongodb://127.0.0.1:27017",
  -- key to use for previewing/picking documents
  list_document_key = "title"
}
EOF

" List available databases
nnoremap <leader>mn <cmd>lua require('mongo-nvim.telescope.pickers').database_picker()<cr>
" List collections in database (arg: database name)
nnoremap <leader>mnl <cmd>lua require('mongo-nvim.telescope.pickers').collection_picker('examples')<cr>
" List documents in a database's collection (arg: database name, collection name)
nnoremap <leader>mndl <cmd>lua require('mongo-nvim.telescope.pickers').document_picker('examples', 'movies')<cr>
