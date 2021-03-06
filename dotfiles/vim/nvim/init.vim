

" =============================================================================
" GENERAL-SETTINGS:
" =============================================================================

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
let &t_ut=''
filetype on
syntax on
syntax enable
filetype plugin indent on
filetype plugin on
autocmd FileType c,cpp,cs,java,kotlin setlocal commentstring=//%s


" =============================================================================
" CURSOR:
" =============================================================================
 
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
 
set guicursor=v-c-sm:block,n-i-ci-ve:ver25,r-cr-o:hor20

" =============================================================================
" PLUGINS:
" =============================================================================

call plug#begin('~/.vim/plugged')

"-------------------=== Other ===-------------------------------
    Plug 'vim-utils/vim-man'
    " Plug 'majutsushi/tagbar'
    Plug 'Konfekt/FastFold'
    Plug 'Yggdroot/indentLine'

"-------------------=== Code/Project navigation ===-------------
    Plug 'mbbill/undotree'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"-------------------=== Languages support ===-------------------
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-commentary'
    Plug 'Dinduks/vim-java-get-set'
    Plug 'cskeeters/javadoc.vim'
    Plug 'ryanoasis/vim-devicons'

"-------------------=== Personalization ===-----------------------------
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'powerline/powerline'
    Plug 'gruvbox-community/gruvbox'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()

" =============================================================================
" SETTINGS:
" =============================================================================

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set smartindent
set mouse=a
set noswapfile
set scrolloff=5
set noerrorbells
set clipboard=unnamedplus
set modelines=0
set nowrap
set backspace=indent,eol,start
set ttyfast
set lazyredraw
set regexpengine=1      "vim 7.4 introduced weaker regex and setting that option will revert it to the older
set synmaxcol=300               " arbitrary number < 3000 (default value)
set laststatus=2
set showmode
set showcmd
set cursorline
set matchpairs+=<:>
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set number
set shell=bash
set hidden
set cmdheight=1
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
" Encoding
set encoding=utf-8
set fileencoding=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase
set viminfo='100,<9999,s100

" =============================================================================
" COLOR SCHEME:
" =============================================================================
let g:gruvbox_italic=1
let g:gruvbox_bold=1

set background=dark
colorscheme gruvbox
" color gruvbox
set termguicolors

" =============================================================================
" KEY BINDINGS:
" =============================================================================
" moving between tabs with leader key
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" moving between tabs
map <PageUp> :tabn<CR>
map <PageDown> :tabp<CR>
map <S-PageDown> :tabr<CR>
map <S-PageUp> :tabl<CR>
inoremap <PageUp> <Esc>:tabn<CR>
inoremap <PageDown> <Esc>:tabp<CR>
inoremap <S-PageDown> <Esc>:tabr<CR>
inoremap <S-PageUp> <Esc>:tabl<CR>


" moving to left, right, up & down
map <S-Left> <C-w>h
map <S-Down> <C-w>j
map <S-Up> <C-w>k
map <S-Right> <C-w>l

" rearranging windows to left, right, down and up
map <C-S-Left> <C-w>H
map <C-S-Down> <C-w>J
map <C-S-Up> <C-w>K
map <C-S-Right> <C-w>L

" alternative if ctrl+shift+<arrow_key> does not work in current terminal
" map <leader>q <C-w>H
" map <leader>a <C-w>J
" map <leader>d <C-w>K
" mp <leader>e <C-w>L
" deleting with arrows and backspace
inoremap <C-w> <C-\><C-o>dB
inoremap <C-BS> <C-\><C-o>db
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

map <leader>wr :set wrap<CR>
map <leader>nwr :set nowrap<CR>

" =============================================================================
" COC EXTENSIONS:
" =============================================================================

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-clangd',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-emmet',
  \ 'coc-highlight',
  \ 'coc-git',
  \ 'coc-gist',
  \ 'coc-html',
  \ 'coc-java',
  \ 'coc-markdownlint',
  \ 'coc-python',
  \ 'coc-sh',
  \ 'coc-lua',
  \ 'coc-kotlin-dev',
  \ 'coc-emoji-shortcodes',
  \ 'coc-marketplace',
  \ 'coc-lists',
  \ 'coc-translator',
  \ 'coc-spell-checker',
  \ 'coc-cspell-dicts',
  \ 'coc-tabnine',
  \ ]

"-------------------=== coc-cspell-dicts ===-------------------------------
" cSpellExt.enableDictionaries": ["spanish"]
" cSpell.language": en,es"

" =============================================================================
" GOYO:
" =============================================================================
map <leader>gy :Goyo<CR>

" let
let g:goyo_width = 120
let g:goyo_height = 85
let g:goyo_linenr = 0


" =============================================================================
" LIMELIGHT:
" =============================================================================
map <leader>ll :Limelight!!<CR>

"limelight configs
" Default: 0.5
let g:limelight_default_coefficient = 0.7
let g:limelight_paragraph_span = 1

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

"note: :Limelight = turn on limelight
":Limelight! = turn off limelight
":Limelight!! = turn on/off


" =============================================================================
" IndentLine:
" =============================================================================
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_color_term = 239

" =============================================================================
" JAVA FILES:
" =============================================================================
au BufEnter *.java :highlight java_class cterm=bold,italic
au BufEnter *.java :match java_class /class/


" =============================================================================
" TAGBAR:
" =============================================================================
" map <S-Tab> :TagbarOpenAutoClose<CR>
" let g:tagbar_autofocus = 1 "move cursor to tagbar as soon as it's toggled

" =============================================================================
" JAVA GETTER SETTER:
" =============================================================================

map <leader>sg :InsertBothGetterSetter<CR>
map <leader>gs :InsertBothGetterSetter<CR>
map <leader>se :InsertSetterOnly<CR>
map <leader>ge :InsertGetterOnly<CR>

" =============================================================================
" NERDTREE:
" =============================================================================
map <F2> :NERDTreeToggle<CR>
map <Tab> :NERDTreeToggle<CR>

" =============================================================================
" UNDOTREE:
" =============================================================================
nnoremap <F5> :UndotreeToggle<CR>

" =============================================================================
" USERDEFINED COMMANDS:
" =============================================================================
" command -nargs=1 Sl /\%V<args><CR>

" =============================================================================
" AIRLINE CONFIGURATION:
" =============================================================================
let g:airline_theme='minimalist' " this affects vim-airline's theme
let g:airline_powerline_fonts = 1 " affects the style, if deleted it will look 'boxy'
let g:airline#extensions#tabline#enabled = 1 " let vim-airline diplay the tabs
let g:airline#extensions#tabline#formatter = 'unique_tail' " the way the tabs are shown

