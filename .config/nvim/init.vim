set number
set shiftwidth=2
set tabstop=2
set expandtab
set history=1000
set nowrap
set noshowmode
set background=dark
set termguicolors
set t_Co=256
set nocompatible

" automatic vim-plug installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/neco-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

" theme
let ayucolor='dark'
let g:lightline = { 'colorscheme': 'ayu_dark' }
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
colorscheme ayu

" indentLine
let g:indentLine_enabled = 1

" hexokinase
let g:Hexokinase_highlighters = [ 'backgroundfull' ]

" deoplete.nvim
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB> 
      \ pumvisible() ? '<C-n>' : 
      \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ? 
      \ '<TAB>' : deoplete#manual_complete()

" keymaps
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :NERDTree<CR>

