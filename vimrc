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
set foldmethod=indent
set laststatus=2
set noshowmode
set encoding=utf-8

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

