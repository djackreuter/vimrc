" Tidy selected lines (or entire file) with zpt:
nnoremap <silent> zpt :%!perltidy -l=120 -q<Enter>
vnoremap <silent> zpt :!perltidy -l=120 -q<Enter>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

syntax on

set termguicolors
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set showmatch
set wildmode=longest:list,full
set hlsearch
au BufNewFile,BufRead *.tt set filetype=html

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'hzchirs/vim-material'
Plug 'haishanh/night-owl.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'blueshirts/darcula'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" different colorschemes

"let g:dracula_italic = 0
"colorscheme dracula
"highlight Normal ctermbg=None
" let g:material_style='oceanic'
" set background=dark
" colorscheme night-owl
" colorscheme vim-material
" colorscheme one
let g:airline_theme='material'
let ayucolor="mirage"
" let ayucolor="dark"
colorscheme ayu

filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
