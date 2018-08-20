syntax on
set mouse=a
set number
set encoding=utf-8
set scrolloff=5

" Buffer configuration
set hidden
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1

" Indentation related stuff
set tabstop=8
set expandtab 
set autoindent 
set smartindent
set shiftwidth=4
set smarttab

" Delete trailing whitespaces when saving
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd FileType c,cpp,php,yaml autocmd BufWritePre <buffer> %s/\s\+$//e

" UltiSnips default folder
let g:UltiSnipsSnippetDirectories = ['~/.vim/pack/cue/start/my-snippets', '../my-snippets', '~/.vim/pack/cue/start/vim-snippets', 'UltiSnips']

"Youcompleteme fix
let g:ycm_global_ycm_extra_conf = '~/.vim/pack/cue/start/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' 

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:UltiSnipsEditSplit = "context"

" Remap
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap n nzz
nnoremap N Nzz

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
