map <Leader>rt :wa<CR>:call VimuxRunCommand("clear; bundle exec rspec --color " . bufname("%"))<CR>
map <Leader>ra :wa<CR>:call VimuxRunCommand("clear; rake spec")<CR>
map <Leader>rs :wa<CR>:call VimuxRunCommand("clear; bundle exec rspec --color " . bufname("%") . ":" . line("."))<CR>
