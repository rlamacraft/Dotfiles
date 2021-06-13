" Vim syntax file
" Language: JavaScript
" Maintainer: Robert Lamacraft
" Latest Revision: 2021-06-13

if exists("b:current_syntax")
  finish
endif

syn keyword jsTodo contained TODO NOTE
syn match jsComment "//.*$" contains=jsTodo
syn region jsCommentBlock start="/\*" end="\*/"

let b:current_syntax = "foo"

hi def link jsTodo Todo
hi def link jsComment Comment
hi def link jsCommentBlock Comment

