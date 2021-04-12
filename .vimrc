" === GENERAL ===

" relative line numbers
set relativenumber

" change directory with change of buffer
" don't enable this as it'll break fuzzy finding
" set autochdir

" enable fuzzy finding
set path+=**

" display all matching files when we tab complete
set wildmenu

" enable syntax highlighting
syntax enable

" allow off-screen edited and unsaved buffers
set hidden

" === SEARCH ===

" show search
set hlsearch

" jump to first result
set incsearch

" clear with <leader>/
map <silent> <leader>/ :nohlsearch<CR>

" ignore case
set ignorecase

" unless includes upper case
set smartcase

" === INDENTATION ===

set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent


" === STATUS LINE ===
set statusline=

" transparent status line
hi StatusLine cterm=bold

" show current line number
set statusline+=%l:%c

" show full file path
set statusline+=\ 
set statusline+=%f

" show modified flag on right side
set statusline+=%=
set statusline+=%m

" where to find ctags
set tags=../.ctags

" === MAPPINGS ===

" comment 'c to here with \c and uncomment with \C
nnoremap <leader>c :'c,.s/^/\/\//<CR>
nnoremap <leader>C :'c,.s/^\/\///<CR>

" task list management
" 1. move the task block 2. move cursor to beginning of block 3. clear search
nnoremap <leader>w :.,/\|=/m/===.WAITING/+1<CR>?^=\|<CR>:nohlsearch<CR>
nnoremap <leader>a :.,/\|=/m/===.ACTIVE/+1<CR>?^=\|<CR>:nohlsearch<CR>
