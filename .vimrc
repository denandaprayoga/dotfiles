set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" konfigurasi workspace vim
syntax on
set background=dark
colorscheme palenight
set tabstop=2
set nu
set t_Co=256
set laststatus=2
set backspace=indent,eol,start
set splitbelow
set splitright
set encoding=utf-8
let python_highlight_all=1
syntax on
set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set showmatch           " highlight matching [{()}]

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"SimpylFold
let g:SimpylFold_docstring_preview=1

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"buffer
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

"NerdTree
nmap <F5> :NERDTreeToggle<CR>

"enable folding
nnoremap <space> za

"GitGutter
let g:gitgutter_eager = 0
let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 1000

"vim airline
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_right_sep = ''
let g:airline_left_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline_powerline_fonts = 1

set guifont=DroidSansMonoforPowerlineNerdFontComplete\ 12

" jedi
set completeopt-=preview

" ctrlpvim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" palenight
if (has("termguicolors"))
  set termguicolors
endif

" indentline
let g:indentLine_char = '┆'

" move cursor in Insert Mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
