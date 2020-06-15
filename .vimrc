colorscheme gruvbox

" Set compatibility to Vim only.
set nocompatible

"Change Cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Help force plug-ins to load correctly
filetype on

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly
filetype plugin indent on

" Turn off modelines 
set modelines=0

" Relativer Line Number
set number
set relativenumber             " Show relative line numbers



" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>

" Fix Home and End Keys 
map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>

" Automatically wrap text that extends beyond the screen light
set wrap

" Vim's auto indentation features does not work properly with test copied from outside of Vim. Press <F2> key to toggle pase mode on/off
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Tabs, Text, etc.
set formatoptions=tcqrn1
set textwidth=79
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with mouse
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in vim
set ttyfast

" Statusbar
set laststatus=2

" Display options
set showcmd
set showmode

" Highlight matching pair of brackets. Use the % characters to jump between them
set matchpairs+=<:>

" Display different types of white space
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number

" Encoding 
set encoding=utf-8

" Highlight matching search patterns 
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time
set viminfo='100,<999,s100

" Map the <Space> key to toggle a selected fold opened/close
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"



" Status Line
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

