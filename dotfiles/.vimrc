set nocompatible

syntax enable
" set background
set bg=dark
" set number
" set nu
" set colorcolumn
set cc=51,73,81

" Mouse doesn't select over line numbers, allows scrolling, etc
set mouse=a
" Backspace over indents, line breaks, before where insert mode started
set backspace=indent,eol,start
" Can select empty spaces with visual block selection
set virtualedit=block
" Keep cursor on the same column when jumping around, e.g. using Ctrl-D
set nostartofline
" No delay for O after escaping insert mode
set ttimeoutlen=0

" Displays line,column at the bottom
set ruler
" Displays keystrokes in normal mode
set showcmd
" Displays options in command mode
set wildmenu
" Display tabs and trailing spaces
set list
set listchars=tab:>-,trail:~

" Highlight match as you search
set incsearch
" Hightlight all occurrences of search term
set hlsearch
" Case insensitive search
set ignorecase
" Use case sensitivity if there are any capital letters
set smartcase

" Copy indentation of previous line
set autoindent
" Spaces instead of tabs
set expandtab
" Number of visual spaces to represent a tab character
set tabstop=8
" Number of spaces to indent using tab, overrides expandtab, but not shiftwidth
set softtabstop=4
" Number of spaces to indent using >>, ignores expandtab, uses tabs if not here
set shiftwidth=4

" Ask for confirmation instead of failing to save a file
set confirm
" Allows changing buffers without saving
set hidden
" New pane is opened to the right of the current one
set splitright
" New pane is opened to the bottom of the current one
set splitbelow

""""""""""""""""""""""""""""""""" KEY MAPPINGS """""""""""""""""""""""""""""""""
" Readline shortcuts (<C-E> already works for command mode)
inoremap <C-A> <C-O>^
inoremap <C-E> <C-O>$
cnoremap <C-A> <C-B>

" Copy to system clipboard
noremap <Space>j "*

" Traverse through wrapped lines
noremap j gj
noremap k gk

" Apply . operator to each line in visual selection
vnoremap . :norm .<CR>

" Replaces ex mode for rapid macro application after recording with  qq
nnoremap Q @q
vnoremap Q :norm @q<CR>

" Reselect after indenting
vnoremap < <gv
vnoremap > >gv

" Taken from :help last-position-jump
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

""""""""""""""""""""""""""""""""""" PLUGINS """"""""""""""""""""""""""""""""""""
" This assumes brew install fzf
set rtp+=/usr/local/opt/fzf
nnoremap <C-T> :FZF<CR>
