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
set encoding=UTF-8
set termguicolors
set laststatus=2
set updatetime=300
set nocompatible 
filetype off  


call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'    
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'vim-scripts/indentpython.vim'
Plug 'preservim/nerdtree'
Plug 'KabbAmine/vCoolor.vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/emmet-vim'
call plug#end()



let NERDTreeShowHidden=1
 let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }
let g:user_emmet_leader_key=','
let mapleader=","
let python_highlight_all=1
syntax on
colorscheme dracula
"remaps for normal mode
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>w <c-w>w<CR>
nnoremap  <C-t> :NERDTreeToggle<CR>
nnoremap <C-g> :GFiles <CR>
nnoremap <C-f> :Files <CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>x :!chmod +x %<CR>
nnoremap <leader>h gT  <CR>
nnoremap <leader>l gt<CR>
nnoremap <silent> <leader>s :w<CR>
nnoremap <leader>` :q!<CR>
nnoremap <silent> <leader>d :%!jq<CR>
nnoremap <silent> <A-t> :Rg<CR>
nnoremap ; :
" remaps for terminal mode
tnoremap <F1> <C-\><C-N>

"remaps for visual mode
vnoremap K :m '<-2<CR>gv=gv
vnoremap <leader>a "+y
vnoremap J :m '>+1<CR>gv=gv
vnoremap <leader>c I#<Esc> 
vnoremap <leader>q I<Tab><Esc> 


cnoremap %% <C-R>=expand('%:h').'/'<cr>


map <leader>e :tabe %%


lua require'colorizer'.setup()

