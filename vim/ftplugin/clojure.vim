nnoremap <silent><buffer> <leader>rt :wa<CR>:<C-R>=expand('%:e') ==# 'cljs' ? 'Require' : 'RunTests'<CR><CR>
nnoremap <Leader>ra :wa<CR>:call VimuxRunCommand("clear; lein test")<CR>

autocmd BufWritePost *.clj silent :Require!

