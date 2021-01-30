" === GENERAL ===

" relative line numbers
set relativenumber

" change directory with change of buffer
set autochdir


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


