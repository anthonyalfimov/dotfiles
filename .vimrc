"===============================================================================
"   Author:
"       Anthony Alfimov
"===============================================================================
"   Sections:
"       * General
"       * Basic UI
"       * Vim Airline
"===============================================================================


"===============================================================================
"   General
"===============================================================================
" Use Vim settings, rather than old Vi settings
" This must be first, because it changes other options as a side effect.
set nocompatible
"===============================================================================


"===============================================================================
"   Basic UI
"===============================================================================
syntax on               " enable syntax highlighting
set showcmd             " show partial commands in the last line of the screen
"===============================================================================
set number              " show line numbers
" Set colour of the line numbers
highlight LineNr ctermfg=darkgrey
" Set colour of the current line number
set cursorline          " enable highlight of current cursor line
highlight CursorLine cterm=NONE
"===============================================================================


"===============================================================================
"   Vim Airline
"===============================================================================
" Use Powerline characters when drawing Airline
let g:airline_powerline_fonts = 1
set noshowmode          " hide default mode indicator
set ttimeoutlen=10      " set value for key code delays (???)
"===============================================================================
