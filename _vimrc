let mapleader=","
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 定义快捷键到行首和行尾
nmap <Leader>lb 0
nmap <Leader>le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
"定义编辑配置文件快捷键
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %
"显示换行符和tab
"set list
"可以设置tab和空格符号的显示
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
"设置tab用空格来代替
"set listchars=tab:\|\ ,
"关闭换行符和tab的显示
"set nolist
"去掉欢迎界面
set shortmess=atI 
"允许鼠标
"set mouse=a
"禁止鼠标
"set mouse=
"关闭烦人的提示音
set vb t_vb=
" 开启实时搜索功能
set incsearch
"搜索时及时显示
set showmatch
"不用备份
set nobackup
"不用swap文件
set noswapfile
" 搜索时大小写不敏感
set ignorecase
"设置智能模式
set smartcase
"显示命令
set showcmd
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 配色方案
set background=dark
"colorscheme solarized
"colorscheme molokai
colorscheme phd
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 总是显示状态栏
set laststatus=2
" 右下角显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 设置 gvim 显示字体
"set guifont=YaHei\ Consolas\ Hybrid\ 11.5
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

"自动改变路径
set autochdir
"智能缩进
set autoindent
set smartindent
set cindent

"设置tab
set tabstop=4
set softtabstop=4
set smarttab
