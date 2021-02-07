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

" === PLUGINS ===

" watch for changes
source $HOME/Documents/Github/Dotfiles/Vim/watchForChanges

" === MAKE ===
" When :make is invoked, run eslint
setlocal makeprg=.\ $HOME/Documents/GitHub/Dotfiles/eslint

" === MAPPINGS ===

" comment 'c to here with \c and uncomment with \C
nnoremap <leader>c :'c,.s/^/\/\//<CR>
nnoremap <leader>C :'c,.s/^\/\///<CR>
