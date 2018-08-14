" Normal mode commands

" this will place the cursor in the middle of the current line (excluding whitespaces at the start and end). Does not work in PyCharm :( but works otherwise
noremap gm :cal cursor(virtcol('_'), virtcol('$')/2)<CR>

" Quick and useful insert mode commands

" standard!
imap jj <Esc>
" go to just before the first non-blank text of the line
inoremap II <Esc>I
" go to the end of the line
inoremap AA <Esc>A
" start editing on a new line above the current line
inoremap OO <Esc>O
" change what is on the right of the cursor
inoremap CC <Esc>C
" change the whole line!
inoremap SS <Esc>S
" delete the current line (end in normal mode)
inoremap DD <Esc>dd
" undo
inoremap UU <Esc>uu
" jump the closing quotes or braces
inoremap <C-e> <Esc>la

" Search and replace the word under cursor
" <C-r> allows you to paste the content in current register in command/insert mode.
" <C-w> has the current word under cursor
"nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap <C-s> :%s/\<<C-r><C-w>\>/

" Switch to previous active tab
if !exists('g:lasttab')
  let g:lasttab = 1
endif
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Visual mode commands

" search for the visually selected text
vnoremap // y/<C-R>"<CR>


" Make the search entry in the middle of the screen
set so=5
" show the command typed/invoked
set showcmd
" set the leader key to space
nnoremap <SPACE> <Nop>
:let mapleader = " "
" Enable ignorecase and smartcase search
" ignorecase by default ignores case. smartcase recognizes automatically that you do not want to ignore case when you search for capital letters
:set ignorecase
:set smartcase
:set autoread " this will autoread changes to file content
:set timeoutlen=500 ttimeoutlen=10

" set tab space to 4 spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
