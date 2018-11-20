"===============================================================================
"   Author:
"       Anthony Alfimov
"===============================================================================
"   Sections:
"       * General
"       * Basic UI
"       * Vim Airline
"       * Indentation
"       * Search
"       * Mappings
"       * THINGS TO TRY
"===============================================================================


"===============================================================================
"   General
"===============================================================================
" Use Vim settings, rather than old Vi settings
" This must be first, because it changes other options as a side effect.
set nocompatible
" Redraw screen only when necessary
set lazyredraw
" Reload file if it was changed outside vim
set autoread
" Start scrolling when we're 6 lines away from margins
set scrolloff=5
"===============================================================================


"===============================================================================
"   Basic UI
"===============================================================================
" Enable syntax highlighting
syntax on
" Show partial commands in the last line of the screen
set showcmd
" Enable Wild Menu for command line completion
set wildmenu

" Show line numbers
set number
" Set colour of line numbers
highlight LineNr ctermfg=darkgrey

" Enable highlight of current cursor line
set cursorline
" Disable highlight of cursor line itself (only line number is highlighted)
highlight CursorLine cterm=NONE
"===============================================================================


"===============================================================================
"   Vim Airline
"===============================================================================
" Use Powerline characters when drawing Airline
let g:airline_powerline_fonts = 1
" Hide default mode indicator
set noshowmode
" Set value for key code delays
set ttimeoutlen=10
"===============================================================================


"===============================================================================
"   Indentation
"===============================================================================
" Use 4 spaces for all indentation.
" Set to use space characters instead of tabs to be used on <TAB> press
set expandtab
" Set the amount of spaces for automatic indentation and >>, << or ==
set shiftwidth=4
" Set the amount of spaces to be used on <TAB> and <BS> press
set softtabstop=4
" Enable filetype-based indentation
filetype plugin indent on
" Retain indentation when starting a new line
set autoindent
"===============================================================================


"===============================================================================
"   Search
"===============================================================================
" Case insensitive search...
set ignorecase
" ...unless capital letters are used
set smartcase
" Search as characters are entered
set incsearch
" Highlight search results (<C-L> to stop highlighting)
set hlsearch
"===============================================================================


"===============================================================================
"   Mappings
"===============================================================================
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohlsearch<CR><C-L>
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
"===============================================================================


"===============================================================================
"   TODO: Try these out
"===============================================================================
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.

"       set confirm

"===============================================================================
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"

"       set cmdheight=2

"===============================================================================
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.

"       set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above
"===============================================================================
