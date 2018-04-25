" set colors
highlight Comment ctermfg=cyan
highlight MatchParen ctermbg=darkcyan
highlight MoreMsg ctermfg=magenta
highlight Type ctermfg=blue
highlight Statement ctermfg=lightgreen
highlight Constant ctermfg=magenta
highlight PreProc ctermfg=magenta
highlight Normal ctermfg=white
highlight Function ctermfg=green

highlight NonText ctermfg=green
highlight Special ctermfg=blue

highlight Visual ctermbg=darkcyan
highlight Visual ctermfg=white
highlight Cursor ctermbg=green
highlight LineNr ctermfg=yellow
highlight LineNr ctermbg=black
highlight CursorLineNr ctermfg=black
highlight CursorLineNr ctermbg=green

" enable filetype detection:
filetype on
filetype plugin on

" for C-like  programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set omnifunc=ccomplete#Complete tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp set omnifunc=ccomplete#Complete tabstop=4 shiftwidth=4 expandtab

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" ensure normal tabs in assembly files
" and set to NASM syntax highlighting
autocmd FileType asm set noexpandtab shiftwidth=8 softtabstop=0 syntax=nasm

" line numbers config
set relativenumber
set number
