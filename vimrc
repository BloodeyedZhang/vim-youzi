" 常用设置
" 设置行号
set number
" 设置高亮
syntax on
" 设置主题
colorscheme hybrid
" 按 F2 进入粘贴模式
set pastetoggle=<F2>
" 高亮搜索
set hlsearch
" 设置折叠方式
" set foldmethod=indent
" set laststatus=2
" set noshowmode
set encoding=utf-8
set ts=4

" 一些方便的映射
let mapleader=','
let g:mapleader=','

" 使用 jj 进入 normal 模式
inoremap jj <Esc>
" 使用 leader+w 直接保存
inoremap <leader>w <Esc>:w<CR>
noremap <leader>w :w<CR>

" 切换 buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>
" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" 插件设置, 这里使用了 vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'w0ng/vim-hybrid'

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
" Initialize plugin system
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>A :Ag<CR>

" 目录树插件
nnoremap <leader>v :NERDTreeFind<CR>
nnoremap <leader>g :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.git$', '\.hg$', '\.svn$', '\.swp$', '\.DS_Store$']

" 查找文件名
let g:ctrlp_map = '<c-p>'

" 快速定位字符
nmap ss <Plug>(easymotion-s2)

let $GOPATH = $HOME."/go"
let $PATH = $HOME."/go/bin:".$PATH
let g:go_bin_path = $HOME."/go/bin"
