set scrolloff=8
set mouse=a
set number
set autoindent 
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set  mouse=a
set noshowmode

set nocompatible 
filetype off  

set termguicolors

call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'ryanoasis/vim-devicons'
call plug#end()
set encoding=UTF-8



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'    
Plugin 'jiangmiao/auto-pairs'
Plugin 'frazrepo/vim-rainbow'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'KabbAmine/vCoolor.vim'
call vundle#end()
filetype plugin indent on


let NERDTreeShowHidden=1
 let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }
set laststatus=2
let g:user_emmet_leader_key=','
let mapleader=","
"remaps for normal mode
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>w <c-w>w<CR>
nnoremap  <C-t> :NERDTreeToggle<CR>
nnoremap <C-g> :GFiles <CR>
nnoremap <C-f> :Files <CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>x :!chmod +x %<CR>
let python_highlight_all=1
syntax on
colorscheme dracula

" remaps for terminal mode
tnoremap <F1> <C-\><C-N>

"remaps for visual mode
vnoremap K :m '<-2<CR>gv=gv
vnoremap <leader>a "+y
vnoremap J :m '>+1<CR>gv=gv
vnoremap <leader>c I#<Esc> 
vnoremap <leader>q I<Tab><Esc> 



