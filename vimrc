" General "{{{
set nocompatible
filetype off
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set autoread  
"set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
"set clipboard+=unnamed  " Yanks go on clipboard instead.
" set pastetoggle=<F10> "  toggle between paste and normal: for 'safer' pasting from keyboard
" set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags
" Modeline
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions
" Backup
set noswapfile
set cc=80
set nowritebackup
set nobackup
set directory=/tmp// " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
" Buffers
set hidden " The current buffer can be put to the background without writing to disk
" Match and search
set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with
set smartcase		" be sensitive when there's a capital letter
set incsearch   "
" "}}}

" Formatting "{{{
set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap
set textwidth=0		" Don't wrap lines by default
set wildmode=longest,list " At command line, complete longest common string, then list alternatives.

set backspace=indent,eol,start	" more powerful backspacing

"set tabstop=2    " Set the default tabstop
"set softtabstop=2
"set shiftwidth=2 " Set the default shift width for indents
" size of a hard tabstop
set tabstop=4
" size of an indent
set shiftwidth=4
" a combination of space and tabs are used to simulate tab stops at
" a width other than the hard tabstop
set softtabstop=4
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels

set autoindent
set cindent
set smartindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

syntax on               " enable syntax
filetype plugin indent on             " Automatically detect file types.
" "}}}

" Visual "{{{
set nonumber  " Line numbers off
set showmatch  " Show matching brackets.
set matchtime=5  " Bracket blinking.
set novisualbell  " No blinking
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set vb t_vb= " disable any beeps or flashes on error
set ruler  " Show ruler
set showcmd " Display an incomplete command in the lower right corner of the Vim window
set shortmess=atI " Shortens messages

set nolist " Display unprintable characters f12 - switches
set listchars=tab:·\ ,eol:¶,trail:·,extends:»,precedes:« " Unprintable chars mapping

set foldenable " Turn on folding
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 

set mouse-=a   " Disable mouse
set mousehide  " Hide mouse after chars typed

set splitbelow
set splitright

" "}}}

""""""""""""""""""""mini buffer navigator""""""""""""""""""""""""""
let g:miniBUfExplMapWindowNavVim=1
let g:miniBUfExplMapWindowNavArrows=1
let g:miniBUfExplMapCTabSwitchBufs=1
let g:miniBUfExplModSelTarget=1
let g:miniBUfExplUseSingleClick=1
let g:miniBUfExplorerMoreThanOne=3

"""""""""""""""""""""""ctags settings""""""""""""""""""""""""""""""
set tags+=~/.vim/cpptags
set tags+=~/.vim/systags

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" Plugins
" trying this 
Bundle "YankRing.vim"
Bundle "http://github.com/thinca/vim-quickrun.git"
Bundle "http://github.com/thinca/vim-poslist.git"
Bundle "http://github.com/mattn/gist-vim.git"
Bundle "http://github.com/rstacruz/sparkup.git", {'rtp': 'vim/'}

" Programming
Bundle "jQuery"
"Bundle "rails.vim"

" Snippets
Bundle "http://github.com/gmarik/snipmate.vim.git"

" Syntax highlight
Bundle "cucumber.zip"

" Git integration
Bundle "git.zip"

" Utility
Bundle "repeat.vim"
Bundle "file-line"
Bundle "Align"


" Navigation
Bundle "http://github.com/gmarik/vim-visual-star-search.git"

" vim-scripts
Plugin 'Wombat'
Plugin 'wombat256.vim'
Plugin 'genutils'
Plugin 'minibufexpl.vim'
Plugin 'grep.vim'
Plugin 'mru.vim'
Plugin 'comments.vim'
" github
Plugin 'vim-scripts/c.vim'
Plugin 'groenewege/vim-less'
Plugin 'plasticboy/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-git'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'embear/vim-localvimrc'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Lokaltog/vim-powerline'

" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails.git'

Plugin 'L9'
Plugin 'taglist.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sjl/gundo.vim'
"Plugin 'vim-signify' "disable due to vimdiff issue
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'edsono/vim-matchit'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
Plugin 'bling/vim-airline'
Plugin 'elzr/vim-json'
Plugin 'honza/vim-snippets'
Plugin 'justinmk/vim-sneak'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tyru/open-browser.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/Solarized'

call vundle#end()

set backupskip=/tmp/*,/private/tmp/*"

colorscheme desert
"try
"  colorscheme wombat256mod
"catch
"endtry

set background=dark
filetype plugin on
syntax on

" Autosettings
augroup mkd " MarkDown
  autocmd FileType mkd setlocal ai spell nofoldenable colorcolumn=80
augroup END

augroup commit
  autocmd FileType gitcommit,cvs setlocal spell textwidth=72 colorcolumn=73
augroup END

" Enable the mouse
if has('mouse')
  set mouse=a
endif

" Enable the status bar
set laststatus=2

if $POWERLINE_FONT
  let g:airline_powerline_fonts = 1
endif

set hidden
set hlsearch
set number

set wrap
set autoindent
set backspace=indent,eol,start

" GUI

"if has("gui_running")
"  colorscheme wombat
"
"  if has("gui_win32") || has("gui_win32s")
"    set guifont=Ubuntu_Mono_derivative_Powerlin:h18
"    let g:airline_powerline_fonts = 1
"    set encoding=utf-8
"    set fileencodings=ucs-bom,utf-8
"  endif
"endif

" Mappings

"   Tab nav
map ;] :tabnext<cr>
map ;[ :tabprevious<cr>

" Work
let g:airline_section_a=airline#section#create(['mode'])
let g:airline_section_b=airline#section#create(['hunks'])
let g:airline_section_x=airline#section#create(['branch', 'ffenc'])
let g:airline_section_y=airline#section#create(['','[TYPE:','filetype',']','[TIME:','%(strftime("%G:%M"))',']'])

""""""""""""Syntastic"""""""""""""""""""""
let g:syntastic_check_on_open=1
let g:syntastic_cpp_include_dirs=['usr/include/']
let g:syntastic_cpp_remove_include_errors=1
let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_compiler_options='-std=c++11 -stdlib=libstdc++'
let g:syntastic_enable_balloons=1

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|CVS$\|\.svn$\|target$\|node_modules\|bower_components',
  \ 'file': '\.class$\|\.so$',
  \ }
let g:ctrlp_extensions = ['dir', 'mixed']
let g:vundle_default_git_proto = 'git'

let g:clang_complete_auto = 1
let g:clang_use_library = 1
let g:clang_debug = 1
let g:clang_library_path = '/usr/lib/'
let g:clang_user_options='|| exit 0'

"""""""""""""""""""YouompleteMe""""""""""""""""""""""""""""""""
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python':1 }
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_confirm_extra_conf=0
let g:ycm_path_to_python_interpreter='/usr/bin/python'
