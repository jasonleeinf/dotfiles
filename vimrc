"------------------------------------------------------------
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
let python_highlight_all=1

"------------------------------------------------------------
" Must have options {{{1
" These are highly recommended options.

set title

set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

"------------------------------------------------------------
" Usability options {{{1
" Use case insensitive search, except when using capital letters

set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
map  <F6> <Esc>:echo expand('%:p')<Return>

 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Vim colorscheme
colorscheme hybrid_reverse 

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3

if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif

set go+=a

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings for using 4 spaces instead of tabs.

set shiftwidth=4
set softtabstop=4
set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4
set smartindent
au! FileType python setl nosmartindent

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Long text navigation mapping
"nnoremap k gk
"nnoremap j gj
"nnoremap 0 g0
"nnoremap 6 g6
"nnoremap $ g$
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default

map Y y$

" Adjust the size of NERDTREE window, either vertically or horizontally
map ] :vertical resize +5<CR>
map [ :vertical resize -5<CR>
"map { :res +5<CR>
"map } :res -5<CR>

" F10 to toggle highlight search
nnoremap <F12> :noh<CR>

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl <CR> <C-L>
 
"let g:NERDTreeDirArrows=0
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <leader>e :buffer NERD_tree_1<CR>

" Allow quit 
map ' :x<CR>
map ; :w<CR>

" Toggle line numbers
map <F8> :set invnumber<CR>

nnoremap <F7> :GundoToggle<CR>

" Delete line
map - dd
map f dd
 
let g:indentLine_char = ' '

let g:LargeFile=10

:set shortmess=a

" Enable 256 colours
set t_Co=256

" Toggle NERDTREE
map <F10> :NERDTreeToggle<CR>

map <F1> :tabmove 

" Toggle Taglist
map <F9> :TlistToggle<CR>

"" Use ctrl-[hjkl] to select the active split!
nmap <c-k> :wincmd l<CR>
nmap <c-j> :wincmd h<CR>
" nmap <silent> <c-h> :wincmd h<CR>
" nmap <silent> <c-l> :wincmd l<CR>

nmap <C-h> gT
nmap <C-l> gt

function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

let g:airline_theme='bubblegum'
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'

"------------------------------------------------------------
" Easymotion mappings {{{1
" let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
" let g:EasyMotion_smartcase = 1

"------------------------------------------------------------
" Vundle {{{1
"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'Shougo/neocomplcache'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
"Plugin 'ervandew/supertab'
Plugin 'vim-scripts/taglist.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
"Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'easymotion/vim-easymotion'
Plugin 'ahw/vim-pbcopy'
Plugin 'sjl/gundo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------------------------------------------------------------
" Etc {{{1

" close nerdtree with q 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:tex_conceal = ""

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

"Linting
let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" map <C-f> :PymodeLintAuto<CR>

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

set foldmethod=indent
set foldlevel=99
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0

"------------------------------------------------------------
