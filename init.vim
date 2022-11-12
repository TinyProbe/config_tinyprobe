" Option
set background=dark
set clipboard=unnamed,unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set hlsearch
set incsearch
set inccommand=split
set mouse=a
set number
set cursorline
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set nowrap
set noshowmode
set noswapfile
set autoread
set autoindent
set smartindent
set smarttab
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Cursor
set gcr= "a:hor25-blinkwait300

" Font
set gfn= "SF\ Mono:h10

" RGB
syntax on
set t_Co=256

augroup vimrcEx
  au!
  autocmd FileType text setlocal textwidth=78
augroup END

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Color Modify
"hi Normal ctermbg=none guifg=#D0D0D0 guibg=#181C24
"hi Visual guifg=none guibg=#4070B0
"hi LineNr guifg=#99DD99
"hi CursorLineNr guifg=#BBFFBB guibg=#343A44
"hi CursorLine guibg=#343A44
"hi Comment guifg=#559955
"hi MatchParen guifg=#B080FF guibg=#AA4080

" Shortcuts
"nnoremap    <Tab> gt
"nnoremap    <S-Tab> gT
"nnoremap    <F5> :NERDTreeToggle<CR>
"nnoremap    <silent><S-t> :tabnew<CR>
"nnoremap    <Leader>rt :%retab<CR>
"nnoremap    <Leader>ff <cmd>Telescope find_files<CR>
"nnoremap    <Leader>fg <cmd>Telescope live_grep<CR>
"nnoremap    <Leader>fb <cmd>Telescope buffers<CR>
"nnoremap    <Leader>fh <cmd>Telescope help_tags<CR>
"nmap        <Leader>pf <Plug>(Prettier)
nnoremap    <Leader>d :bd<CR>
nnoremap    <Leader>n :bn<CR>
nnoremap    <Leader>p :bp<CR>
nnoremap    <F2> :terminal<CR>i
nnoremap    <Leader>pi :PlugInstall<CR>
nnoremap    <Leader>pc :PlugClean<CR>
nnoremap    <Leader>pu :PlugUpdate<CR>
nnoremap    <Leader>sc :source ~/.config/nvim/init.vim<CR>
nnoremap    <Tab> :n<CR>zz
nnoremap    <S-Tab> :N<CR>zz
nnoremap    - <C-x>
nnoremap    = <C-a>
nnoremap    <C-q> :q!<CR>
nnoremap    <C-s> :w<CR>
nnoremap    <C-a> ggVG
nnoremap    <C-j> jzz
nnoremap    <C-k> kzz
xnoremap    <Tab> >gv
xnoremap    <S-Tab> <gv
vnoremap    <C-j> :m'>+<CR>gv
vnoremap    <C-k> :m-2<CR>gv
vnoremap    ( s()<esc>hp%
vnoremap    ) s(  )<esc>hhpl%
vnoremap    { s{}<esc>hp%
vnoremap    } s{  }<esc>hhpl%
vnoremap    <A-[> s[]<esc>hp%
vnoremap    <A-]> s[  ]<esc>hhpl%
vnoremap    < s<><esc>hp
vnoremap    > s<  ><esc>hhp
vnoremap    ' s''<esc>hp
vnoremap    " s""<esc>hp
vnoremap    / :norm i//<CR>
vnoremap    ? :norm 2x<CR>
vnoremap    <A-/> s/*  */<esc>hhhp
vnoremap    <A-?> :s/\/\* //<CR>gv:s/ \*\//<CR>
nnoremap    yy Vdugv<esc>
vnoremap    y dugv<esc>
vnoremap    p pgvy

" Vim Plug
call plug#begin()
" Appearance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'ryanoasis/vim-devicons'

" Theme
Plug 'morhetz/gruvbox'

" Utilities
"Plug 'preservim/nerdtree'
"Plug 'sheerun/vim-polyglot'
Plug '907th/vim-auto-save'

" Completion/Linters/Formatters
"Plug 'tpope/vim-surround'
"Plug 'preservim/nerdcommenter'

" Git
"Plug 'airblade/vim-gitgutter'
call plug#end()

" Appearance
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:lightline = { 'colorscheme': 'gruvbox' }

" Theme
colorscheme gruvbox

" Utilities
let g:auto_save=1
"let NERDTreeShowHidden=1

" NERD Commenter
" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims=1
" Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs=1
" Align line-wise comment delimiters flush left instead of following code indentation
"let g:NERDDefaultAlign='left'
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java=1
" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters={ 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
"let g:NERDCommentEmptyLines=1
" Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace=1
" customize keymapping
"map <Leader>cc <plug>NERDComToggleComment
"map <Leader>c<space> <plug>NERDComComment
