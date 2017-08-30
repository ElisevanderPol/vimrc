set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-syntastic/syntastic'

Plugin 'hynek/vim-python-pep8-indent'

Plugin 'airblade/vim-gitgutter'
Plugin 'flazz/vim-colorschemes'
Plugin 'benekastah/neomake'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'dag/vim-fish'
Plugin 'tpope/vim-commentary'
Plugin 'reedes/vim-wordy'
Plugin 'junegunn/goyo.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'hura/vim-asymptote'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'


" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set colorcolumn=80

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


if $COLORTERM == 'mate-terminal'
	  set t_Co=256
endif

nmap <F8> :TagbarToggle<CR>

" Remove trailing whitespace in python and rust files
autocmd BufWritePre *.py :%s/\s\+$//e

" Bind ctrl+p to FZF
nnoremap <C-p> :FZF<cr>

" FZF ignores
let g:extesions_ignore = ['exe'
            \'bcf', 'bbl', 'blg', 'fdb_latexmk', 'gls', 'glg', 'alg', 'acr',
            \'run.xml', 'ist', 'glo', 'upb', 'upa', 'acn', 'svg', 'jpeg', 'jpg',
            \'png']
let g:ignore_dirs = ['build', 'node_modules', 'venv', 'python2_source',
            \'_minted-', '.sass-cache', 'dist',
            \'.git', '.svn', '.hg']

let $FZF_DEFAULT_COMMAND = 'ag --hidden ' .
            \'--ignore "*.' . join(g:extesions_ignore, '" --ignore "*.') . '" ' .
            \'--ignore "' . join(g:ignore_dirs, '" --ignore "') . '" ' .
            \'-g ""'

colorscheme wombat256mod

nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

let g:syntastic_aggregate_errors = 1

nmap <F8> :TagbarOpen fj<CR>

syntax on
