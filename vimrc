syntax on
filetype indent on
color railscasts

set nocompatible
set autoindent
set background=dark
set showmatch
set tabstop=2
set shiftwidth=2
set softtabstop=2
set wrapmargin=2
set nobk
set ruler
" set noexpandtab
set expandtab
set number
set bs=2
set showcmd
set visualbell
set is
set nohls
set nu
set laststatus=2
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

:let mapleader = ","
" Command-T configuration
let g:CommandTMaxHeight=20

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Backups & Files
set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

:hi LineNr guifg=black guibg=darkgrey
:map <F10> :execute 'NERDTreeToggle' <CR>

au  BufRead,BufNewFile * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au  BufRead,BufNewFile * match OverLength /\%81v.*/

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=50 columns=140
endif

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
set list!
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
