call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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

" Add recently accessed projects menu (project plugin)
set viminfo^=!

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
:map <F11> :execute 'NERDTreeToggle' <CR>

au  BufRead,BufNewFile * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au  BufRead,BufNewFile * match OverLength /\%81v.*/

"Invisible character colors
hi Nontext guifg=#4a4a59
hi SpecialKey guifg=#4a4a59

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
set list!
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
