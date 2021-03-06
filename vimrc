" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by 
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option. 

" This line should not be removed as it ensures that various options are 
" properly set to work with the Vim-related packages available in Debian. 
runtime! debian.vim 

" Disable compatibility mode
set nocompatible


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" General behavior of Vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting.
syntax on

" Enable filetype specific plugins and indentation
filetype plugin indent on

" Set the standard encoding
set encoding=utf8

" Set the height of the command bar
set cmdheight=1

" Always show the status line
set laststatus=2

" Always show tab line
set showtabline=1

" Show (partial) command in status line
set showcmd

" Show line numbers.
set number

" Show the line and column number of the cursor position, seperated by
" a comma.
set ruler

" Set whether a line that doesn't fit into a window is wrapped around
" at the end of the window.
set nowrap

" Make Vim wrap long lines at specified characters instead of wrapping
" at the last character in the line.
set linebreak

" Makes Vim ask for a confirmation instead of showing an error
" message.
set confirm

" Define the default width of the current window
set winwidth=80

" Define the default height of the current window
set winheight=15

" Show a vertical lign at column 80
set colorcolumn=80

" Define the minimal width for a window
set winminwidth=20

" Define the minimal height for a window
set winminheight=7

" Set the maximum width of text that is being insterd without breaking
" it to a new line.
" Setting this value to '0' disables this option.
set textwidth=80

" A list of file patterns. A file that matches with one of these
" patterns is ignored when expanding wildcards, completing file or
" directory names, etc.
set wildignore+=*.o,*.d,*.obj,*.bak,*.exe,*.aux,*.toc,*.backup

" Show the cursor line by default
set cursorline

" Make 'word' stop at underscores. Does not affect 'Word'.
set iskeyword-=_


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Scrolling properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set leading/trailing lines for the cursor when moving vertically.
set scrolloff=7

" Set leading/trailing columns for the cursor when moving
" horizontally.
set sidescrolloff=20

" Set the amount of columns to scroll horizontally, when the end of
" the window is reached.
set sidescroll=35

" Set Wildmenu
set wildmenu

" Make the wild menu auto complete to the longest substring of all
" matches
set wildmode=longest


"
" Indentation rules
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Number of spaces a <TAB> counts for
set tabstop=2

" Number of spaces that a Tab counts for while performing editing
" operations.
set softtabstop=2

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=2

" When on, a <Tab> in front of a line inserts blanks according to
" 'shiftwidth'. 'tabstop' is used in other places. A <BS> will delete
" a 'shiftwidth' wide bunch of space at the start of the line.  What
" gets inserted (a <Tab> or spaces) depends on the 'expandtab' option.
set smarttab

" Use the appropriate number of spaces to insert a <Tab>.  Spaces are
" used in indents with the '>' and '<' commands and when 'autoindent'
" is on. To insert a real tab when 'expandtab' is on, use CTRL-V
" <Tab>.
set expandtab

" Copy indent from current line when starting a new line (typing <CR>
" in Insert Mode or when using the "o" or "O" command).
set autoindent

" When a bracket is inserted, briefly jump to the matching one. The
" jump is only done if the match can be seen on the screen. The time
" to show the match can be set with "matchtime".
" set showmatch
" set matchtime 5


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Search properties
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow 'search next' to jump back to the beginning of the file if the
" end was reached (equivalent for 'search previous').
set nowrapscan

" Set whether to highlight matches for previous search patterns.
set hlsearch

" While typing a search command, show immediately where the so far
" typed pattern matches.
set incsearch

" Ignore the case when searching
set noignorecase

" When searching, try to be smart about cases 
" set smartcase


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined folding
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Define where to create folds
set fdm=manual

" Set the number of screen line above which a fold can be displayed
" closed.
set fml=5

" Define the maximum nesting of folds (for the 'indent' and 'syntax'
" methods).
set fdn=3

" Specify the text displayed for a closed fold.
"set fdt=


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Spelling
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable spellchecking by default
set nospell

" Set languages for spell checking
set spelllang=en_US


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vim auto completion
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set completeopt=menu,menuone,longest,preview
au CursorMovedI,InsertLeave * if pumvisible() == 0|sil! pclose|endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Colors & Highlighting
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" When set to "dark", Vim will try to use colors that look good on a
" dark background. When set to "light", Vim will try to use colors
" that look good on a light background. Any other value is illegal.
set background=dark

" Define a cholor scheme
"
" Here is a list of available color schemes
"   blue
"   darkblue
"   default
"   delek
"   desert
"   elflord
"   evening
"   koehler
"   morning
"   murphy
"   pablo
"   peachpuff
"   ron
"   shine
"   slate
"   torte
"   zellner
"
"colorscheme solarized 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined highlighting
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show search results in red with an underline and without background
hi MatchParen ctermbg=red ctermfg=black guibg=red guifg=black

hi TabLineSel ctermbg=red
hi PMenuSel ctermbg=brown
hi StatusLine ctermfg=brown
hi StatusLineNC ctermfg=gray
hi CursorColumn term=reverse ctermbg=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined statusline
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"recalculate the long line warning when idle and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

"return a warning for "long lines" where "long" is either &textwidth
"or 80 (if no &textwidth is set)
"
"return '' if no long lines
"return '[#x,my,$z] if long lines are found, were x is the number of
"long lines, y is the median length of the long lines and z is the
"length of the longest line
function! StatuslineLongLineWarning()
    if !exists("b:statusline_long_line_warning")
        let long_line_lens = s:LongLines()

        if len(long_line_lens) > 0
            let b:statusline_long_line_warning = "[" .
                        \ '#' . len(long_line_lens) . "," .
                        \ 'm' . s:Median(long_line_lens) . "," .
                        \ '$' . max(long_line_lens) . "]"
        else
            let b:statusline_long_line_warning = ""
        endif
    endif
    return b:statusline_long_line_warning
endfunction

"return a list containing the lengths of the long lines in this buffer
function! s:LongLines()
    let threshold = (&tw ? &tw : 80)
    let spaces = repeat(" ", &ts)

    let long_line_lens = []

    let i = 1
    while i <= line("$")
        let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
        if len > threshold
            call add(long_line_lens, len)
        endif
        let i += 1
    endwhile

    return long_line_lens
endfunction

"find the median of the given array of numbers
function! s:Median(nums)
    let nums = sort(a:nums)
    let l = len(nums)

    if l % 2 == 1
        let i = (l-1) / 2
        return nums[i]
    else
        return (nums[l/2] + nums[(l/2)-1]) / 2
    endif
endfunction

"
" Set statusline
"

set statusline=

"set statusline=
"set statusline+=%#todo#  "switch to todo highlight
"set statusline+=%F       "full filename
"set statusline+=%#error# "switch to error highlight
"set statusline+=%y       "filetype
"set statusline+=%*       "switch back to normal statusline highlight
"set statusline+=%l       "line number

"set statusline+=%F                                    " full filename
set statusline+=%{expand('%')}         " relative path of current file
"set statusline+=%#error#%{expand('%:f')}%*          " last extension
"set statusline+=%#error#%{expand('%:t:e')}%*        " name of file (without extension)
"set statusline+=%{fnamemodify(bufname('%'),':h')}/        " relative path
"set statusline+=%{fnamemodify(bufname('%'),':t:r:s?^\\..*$??')} " filename without last extension
"set statusline+=%#error#%{fnamemodify(bufname('%'),':t:s?^.*\\.?.?')}%* " last extension
set statusline+=\ [
set statusline+=%{strlen(&fenc)?&fenc:'none'},  " file encoding
set statusline+=%{&ff}                          " file format
set statusline+=]
set statusline+=%y                              " filetype
set statusline+=%h                              " help file flag
set statusline+=%#error#%m%*                    " modified flag
set statusline+=%r                              " read-only flag
"set statusline+=\ \ -\ %{getcwd()}               " print CWD
set statusline+=%=                              " left/right seperator
set statusline+=%c,                             " cursor column
set statusline+=%#error#%l%*/%L              " cursor line/total lines
set statusline+=\ %P                            " percent through file


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Format options
"
"
" This is a sequence of letters which describes how automatic
" formatting is to be done.
"
" letter    meaning when present in 'formatoptions'
" ------    ---------------------------------------
" c         Auto-wrap comments using textwidth, inserting the current
"           comment leader automatically.
" q         Allow formatting of comments with "gq".
" r         Automatically insert the current comment leader
"           after hitting <ENTER> in Insert Mode.
" t         Auto-wrap text using textwidth (doesn't apply to comments).
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions=c,q,r


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User-defined commands
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete trailing whitespace and tabs at the end of each line
command! DeleteTrailingWs :%s/\s\+$//

" Substitute all tabs by two whitespaces
command! Untab2 :%s/\t/  /g

" Substitute all tabs by four whitespaces
command! Untab4 :%s/\t/  /g

" Alias to vertically resize the current window
command! -nargs=+ Say :echo <q-args>
command! -nargs=1 V :vertical resize <args>

" Switches between absolute and relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

set relativenumber


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Custom keymaps
"
"
" {cmd} {attr} {lhs} {rhs}
"
" {cmd} : of the form <?>map, <?>noremap or <?>unmap,
"         where  <?>  can be one of the following:
"
"       :   -   normal, visual, select and operator pending mode
"       :!  -   insert and command-line mode
"       :n  -   normal mode
"       :i  -   insert mode
"       :v  -   visual and select mode
"       :s  -   select mode
"       :x  -   visual mode
"       :c  -   command-line mode
"       :o  -   operator pending mode
"
" {attr} :  optional, one or more of the following
"
"       <buffer>    -   the mapping will by effective in the
"                       current buffer only
"       <silent>    -   the mapping will not be echoed in
"                       the command line
"       <expr>
"       <script>    -   the mapping will only remap charachters
"                       using mappings that were defined local
"       <unique>    -   lets the command fail if the mapping or
"                       abbreviation already exists
"       <special>   -   useful to suppress side effect when
"                       mapping with <> notation for special
"                       charachters
"
" Key modifiers:
"   Control     -   <C-key>
"   Shift       -   <S-key>
"   Alt         -   <A-key> or <M-key>
"   Super       -   <T-key>
"
" Special keys:
"   <BS>           Backspace
"   <Tab>          Tab
"   <CR>           Enter
"   <Enter>        Enter
"   <Return>       Enter
"   <Esc>          Escape
"   <Space>        Space
"   <Up>           Up arrow
"   <Down>         Down arrow
"   <Left>         Left arrow
"   <Right>        Right arrow
"   <F1> - <F12>   Function keys 1 to 12
"   #1, #2..#9,#0  Function keys F1 to F9, F10
"   <Insert>       Insert
"   <Del>          Delete
"   <Home>         Home
"   <End>          End
"   <PageUp>       page-up
"   <PageDown>     page-down
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Alternative Escape key
inoremap q <Esc>
nnoremap q <Esc>
vnoremap q <Esc>
cnoremap q <Esc>
onoremap q <Esc>

" Shortcut for arraging text to 'textwidth'
noremap w <C-o>gwgw<Enter>
nnoremap w gwgw
xnoremap w gw

" Map Vim's file name omni completion to Alt+F
inoremap f <C-X><C-F>

" Map toggle line numbers to <Space>
nnoremap <Space> :call NumberToggle()<CR>

" If pressing Tab in Normal Mode, cycle to the next tab.
nnoremap <silent><special> <Tab> :tabnext<CR>

" If pressing Shift+Tab in Normal Mode, cycle to the previous tab.
nnoremap <silent><special> <S-Tab> :tabprevious<CR>

" Pressing Ctrl+P now has the same behavior aas Ctrl-I had.
nnoremap <silent><special> <C-P> g,

" Pressing Ctrl+N in Normal Mode will go to the command line and print
" the new tab command.
nnoremap <special> <C-N> :tabnew <C-D>

" Pressing Alt+N in Normal Mode will go to the command line and print
" the new tab command.
nnoremap n <C-W>v<C-W>l:edit <C-D>

" Maps the F3 key to insert the current date and time
inoremap <special> <F3> <C-R>=strftime('%c')<CR>

" Maps the F3 key to insert the current date and time
cnoremap <special> <F3> <C-R>=strftime('%c')<CR>

" Remove all trailing whitespaces
nnoremap <special> <F8> :DeleteTrailingWs<CR>

" Show the list of compiler statements
nnoremap <special> <F12> :cl<CR>

" Pressing  ,t  will open the alternate file in a new tab.
nnoremap <silent> ,t :AT<CR>

" Pressing  ,v  will open the alternate file in a new vertical window.
nnoremap <silent> ,v :AV<CR>

" Open tag list selection menu
nnoremap j :tselect <C-R>=expand("<cword>")<CR><CR>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> # :call VisualSelection('f')<CR>nN

function! VisualSelection(direction) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  elseif a:direction == 'f'
    execute "normal /" . l:pattern . "^M"
  elseif a:direction == 'gv'
    call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
  elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

