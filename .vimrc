set nocompatible          " get rid of Vi compatibility mode
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set number                " show line numbers
set laststatus=2          " last window always has a statusline
set encoding=utf-8        " set encoding to utf-8
set incsearch             " highlight as you type your search
set hlsearch              " highlight search results
set ignorecase            " make searches case-insensitive
set ruler                 " always show info along bottom
set autoindent            " auto-indent
set smartindent           " smart-indent
set tabstop=2             " tab spacing
set softtabstop=2         " tabs in insert mode
set shiftwidth=2          " indent/outdent by 2 columns
set expandtab             " use spaces instead of tabs
set smarttab              " be smart about tabs
" set autochdir             " set current dir to the one the current file is in
set wildmenu              " show file options above the command line
set cursorline            " show line the cursor is on

call plug#begin('~/.local/share/nvim/plugged')
Plug 'elmcast/elm-vim' 
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'nightsense/vimspectr'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
call plug#end()


" vim-javascript config
" enable flow
let g:javascript_plugin_flow = 1

" The Silver Searcher
" https://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR> 

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

set t_Co=256              " enable 256-color mode
syntax enable             " enable syntax highlighting
colorscheme Benokai

" ctr-p file search
:map <C-p> :FZF<CR>

" toggle nerdtree
:map <C-y> :NERDTreeToggle<CR>

