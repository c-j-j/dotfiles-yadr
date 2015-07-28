" This loads after the yadr plugins so that plugin mappings can
" be overwritten.

if filereadable(expand("~/.yadr/vim/after/.vimrc.after"))
  source ~/.yadr/vim/after/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

nnoremap <silent> <C-s> :<C-u>SaveFile<CR>
inoremap <c-s> <Esc><Esc>:SaveFile<CR><Esc>

noremap Y y$

noremap <leader>p :set paste<CR>"*p<CR>:set nopaste<CR>
noremap <leader>P :set paste<CR>"*p<CR>:set nopaste<CR>
vnoremap <leader>y "*ygv
noremap <leader>y "*y

set wrap

noremap j gj
noremap k gk
noremap gj j
noremap gk k

let g:projectionist_heuristics = {
      \ "project.clj" : {
      \ "src/*.clj": {"alternate": "test/{}_test.clj",
      \               "type": "src",
      \               "start": "`lein test-refresh`"},
      \ "test/*_test.clj": {"alternate": "src/{}.clj",
      \                     "type": "test"}
      \ },
      \ "Gemfile" : {
      \ "lib/*.rb": {"alternate": "spec/{}_spec.rb",
      \               "type": "src"
      \               },
      \ "spec/*_spec.rb": {"alternate": "lib/{}.rb",
      \                     "type": "test"}
      \ }
      \ }

map <silent> <Leader>nt :NERDTreeToggle<CR>

"Rename highlighted text
noremap R :%s///gc<left><left><left>

"reformats page and go to last edit location
map <Leader>cf gg=Gg;

noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

nnoremap B ^
nnoremap E $
