set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin' "
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'junegunn/fzf' " fuzzy file search
Plugin 'w0rp/ale' " linter
Plugin 'scrooloose/nerdtree'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'mxw/vim-jsx'
Plugin 'moll/vim-bbye'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'morhetz/gruvbox'
Plugin 'coldnight/pretty_json.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'wlangstroth/vim-racket'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable

" Theme settings
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'medium'

" Hide toolbar and menubar
set guioptions -=m
set guioptions -=T

" Set anonymous clipboard to system clipboard '+'
set clipboard=unnamedplus

" Airline and buffer settings
let g:airline#extensions#tabline#enabled = 1
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set termencoding=utf-8
set encoding=utf-8
set lines=40 columns=201
set backspace=indent,eol,start
set nu
set list
set cursorline
set lazyredraw
set colorcolumn=81
set wrap!
set linespace=8
set hidden " Allows for swapping buffers without saving

" So swap and backup files do not wind up in project dirs
set backup
set backupdir=$HOME/.vim/backups//
set directory=$HOME/.vim/swapfiles//
" To allow hot module reloading for parcel: https://parceljs.org/hmr.html#safe-write
set backupcopy=yes
" Load current directory .vimrc files
set exrc

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set guifont=Fira\ Mono\ Regular\ 9

" youcompleteme settings
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
set completeopt=menuone

" ignore terminal when switching buffers
" https://vi.stackexchange.com/a/16709
augroup termIgnore
	autocmd!
	autocmd TerminalOpen * set nobuflisted
augroup END
