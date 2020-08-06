"=============================================================================
" General settings
"=============================================================================

" 关闭兼容
set nocompatible
" 不用备份
set nobackup
" 不用swap文件
set noswapfile
" 自动改变路径
set autochdir

" Tab related
set tabstop=4				" Tab 宽度为 4 个字符
set shiftwidth=4			" 自动缩进的时候，缩进尺寸为 4 个字符
set smarttab				" 按一下 Backspace 就删除 tabstop 个空格
set expandtab				" 编辑时将所有 Tab 替换为空格，有了这个设置才能使 ts 和 sw 对应的字符成为空格
set ambiwidth=double		" 防止特殊符号无法正常显示

" Format related
set tw=80					" 光标超过 80 列的时候折行
set lbr						" 不在单词中间断行
set fo+=mB					" 打开断行模块对亚洲语言支持。m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格。

" Indent related
set cindent					" C风格自动缩进
set autoindent				" 自动缩进

" Editing related
set backspace=start			" 插入模式键入3个字符，之后按5下删除，只能删除3个字符加得到两声嘟嘟，start 解决这个问题。
set backspace=eol			" 插入模式下，光标处于行首，按下删除，得到嘟嘟，eol 解决这个问题。
set backspace=indent		" 设置了自动缩进后，如果前一行缩进了一定距离，按下回车后，下一行也会保持相同的缩进。默认情况下，我们不能在 Insert 模式下直接按 Backspace 删除行首的缩进，indent 解决了这个问题。
set whichwrap=b,s,<,>,[,]	" 默认情况下，在 VIM 中当光标移到一行最左边的时候，我们继续按左键，光标不能回到上一行的最右边。同样地，光标到了一行最右边的时候，我们不能通过继续按右跳到下一行的最左边。
set mouse=a					" 打开鼠标功能
set selectmode=				" 不使用 selectmode，选择模式就是按住鼠标选择文本
set mousemodel=popup		" 当右键单击窗口的时候，弹出快捷菜单。
set keymodel=				" 不使用“Shift + 方向键”选择文本
set selection=inclusive		" 指定在选择文本时，光标所在位置也属于被选中的范围。
set wildmenu				" 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来

" Encoding related
set encoding=utf-8			" VIM内部使用编码格式
set langmenu=zh_CN.UTF-8	" 使用中文菜单，并使用 UTF-8 编码
" language message zh_CN.UTF-8	" 使用中文提示信息，并使用 UTF-8 编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1		" http://edyfox.codecarver.org/html/vim_fileencodings_detection.html

set list					" 显示不可见字符
set listchars=tab:?\ ,trail:\ ,extends:?,precedes:?		" 将制表符 tab 显示为 … ;将尾部空格 trail 显示为 · ;将左则超出屏幕范围部分 precedes 标识为 ? ;将右侧超出屏幕范围部分 extends 标识为 ?
highlight SpecialKey ctermbg=Red guibg=Red	" ctermbg 是彩色终端背景色，guibg 是GUI背景色

" File type related
filetype plugin indent on

" Display related
" 总是显示状态栏
set laststatus=2
" 右下角显示光标当前位置
set ruler
" 开启行号显示
set number

if has("gui_running")
	" 禁止显示滚动条
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R
	" 禁止显示菜单和工具条
	set guioptions-=m
	set guioptions-=T
endif

" 去掉欢迎界面
set shortmess=atI 
" 开启实时搜索功能
set incsearch
" 搜索时及时显示
set showmatch
" 搜索时大小写不敏感
set ignorecase
" 设置智能模式，当你查找键入的内容都是小写则大小写都会匹配，如果键入内容包含大写则就是大小写敏感
set smartcase
" 在状态栏显示目前所执行的指令
set showcmd
" 配色方案
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd
" 高亮显示搜索结果
set hlsearch
" 打开关键字上色
syntax on

" ============================================================================
" Shortcuts
" ============================================================================

let mapleader=","

" 定义快捷键到行首和行尾
nmap <Leader>lb 0
nmap <Leader>le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
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

"=============================================================================
" File types
"=============================================================================

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

"=============================================================================
" Platform dependent settings
"=============================================================================

if (has("win32"))
    if (has("gui_running"))
		"set guifont=YaHei\ Consolas\ Hybrid\ 11.5
    endif
else
    if (has("gui_running"))
        set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
    endif
endif
