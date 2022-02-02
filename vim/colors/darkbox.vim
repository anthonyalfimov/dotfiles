" Vim color file
" Maintainer:	Anthony Alfimov
" Last Change:	2022 Feb 2

" Set 'background' to dark
set background=dark

" Remove all existing highlighting and set the defaults.
highlight clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "darkbox"

highlight Normal            ctermfg=15

highlight Comment           ctermfg=6

highlight Constant          ctermfg=11
highlight String            ctermfg=1
highlight Character         ctermfg=11
highlight Boolean           ctermfg=5

highlight PreProc           ctermfg=166
highlight Identifier        ctermfg=15      cterm=NONE
highlight Statement         ctermfg=5
highlight Type              ctermfg=5

highlight Function          ctermfg=4

highlight Special           ctermfg=2
highlight Underlined        ctermfg=5       cterm=bold
highlight Ignore            ctermfg=94
highlight Error             ctermfg=254     ctermbg=1       cterm=bold
highlight Todo              ctermfg=10      ctermbg=NONE    cterm=bold

highlight LineNr            ctermfg=8

" Disable highlight of cursor line itself (only line number is highlighted)
highlight CursorLine        cterm=NONE
" Set the highlight style for the line number (only colour)
highlight CursorLineNR      ctermfg=166     cterm=NONE

"=== markdown ===
highlight markdownUrl       ctermfg=4
highlight markdownLinkText  ctermfg=1       cterm=NONE
highlight markdownH1        ctermfg=3       cterm=bold
highlight markdownH2        ctermfg=3       cterm=bold
highlight markdownH3        ctermfg=3       cterm=bold
highlight markdownH4        ctermfg=3       cterm=NONE
highlight markdownH5        ctermfg=3       cterm=NONE
highlight markdownH6        ctermfg=3       cterm=NONE

"=== cpp ===
highlight cppType ctermfg=5

" vim: sw=2
