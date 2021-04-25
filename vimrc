" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

set guifont=Ubuntu\ Mono\ 14

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

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
set hidden

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undohistories

" Set bigger history of executed commands
set history=1000

" Automatically re-read files if unmodified inside Vim
set autoread

" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Mark the line where the cursor is currently
set cursorline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Maximum number of tab pages that can be opened from the command line
set tabpagemax=40

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Disable beep on errors
set noerrorbells

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number
set relativenumber

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Set the window's title reflecting the file currently edited
set title

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" When set to "dark", Vim will try to use colors that look good on a
" dark background.  When set to "light", Vim will try to use colors that
" look good on a light background
set background=dark

" This causes Vim to move the cursor to the previous matching bracket for half
" a second, and quickly pressing a key will effectively cancel this animation
" so it doesn't get in the way of rapid typing. The duration for this animation
" is set with :set matchtime=10, where 10 is in tenths of a second.
set showmatch
set matchtime=2

set wrapmargin=2
set nobk
set bs=2
set is
set nu
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

" Completition use currrent file and ctags
set complete=.,t

" Leader
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>P "+P
vmap <Leader>P "+P
vmap <Leader>p "+p
nmap <Leader><Leader> V

"" JSON pretty print
map <leader>jp  <Esc>:%!json_xs -f json -t json-pretty<CR>

" Move visual selection
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

" Seach Object
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

"Invisible character colors
hi Nontext guifg=#4a4a59
hi SpecialKey guifg=#4a4a59

" Backups & Files
set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

:hi LineNr guifg=black guibg=darkgrey

au  BufRead,BufNewFile * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au  BufRead,BufNewFile * match OverLength /\%81v.*/

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Vim Plug
call plug#begin('~/.vim/plugged')

" Plug 'flazz/vim-colorschemes'
Plug 'ghifarit53/tokyonight-vim'

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline-themes'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'ayu-theme/ayu-vim'
set termguicolors
let ayucolor="mirage"

Plug 'rking/ag.vim'
" Ag - the silver searcher
let g:ag_prg="ag --nocolor --nogroup --column"
let g:ag_highlight=1

Plug 'jremmen/vim-ripgrep'

"Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap <Leader>o :Files<CR>
nnoremap <Leader>f :GFiles<CR>
nnoremap <Leader>g :GFiles?<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>s :Snippets<CR>

Plug 'Yggdroot/indentLine'
let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
:map <F11> :execute 'NERDTreeToggle' <CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'vim-syntastic/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_ruby_checkers = ['mri', 'rubocop', 'reek']
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

Plug 'sheerun/vim-polyglot'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Autocomplete
Plug 'codota/tabnine-vim'

let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" TagBar
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'


Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tokyonight'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-scripts/taglist.vim'
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
set list!

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

" Git
Plug 'tpope/vim-fugitive'

" Ruby
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
let g:vimrubocop_keymap = 0
let g:vimrubocop_config = '~/code/cabify/cabify_server/.rubocop.yml'
nmap <Leader>rc :RuboCop<CR>


Plug 'tpope/vim-rails', { 'for': 'ruby' }

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_gopls_enabled = 0
let g:go_def_mode='omnifunc'
let g:go_info_mode='omnifunc'

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" Elixir
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
let g:alchemist#elixir_erlang_src = "~/.asdf/installs"

Plug 'c-brenn/phoenix.vim', { 'for': 'elixir' }
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'mhinz/vim-mix-format', { 'for': 'elixir' }
let g:mix_format_on_save = 1

Plug 'janko/vim-test'
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

Plug 'jvirtanen/vim-hcl'

call plug#end()

" colorscheme ayu
" colorscheme shades_of_purple
" colorscheme one
colorscheme tokyonight
