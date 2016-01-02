map <Leader>rt :wa<CR>:call VimuxRunCommand("clear; mix test " . bufname("%"))<CR>
map <Leader>ra :wa<CR>:call VimuxRunCommand("clear; mix test")<CR>
map <Leader>rs :wa<CR>:call VimuxRunCommand("clear; mix test " . bufname("%") . ":" . line("."))<CR>
