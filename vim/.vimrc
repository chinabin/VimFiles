" 关闭兼容
set nocompatible 
syntax enable
filetype plugin on
filetype indent on
set autoindent              " 保持与前一行相同的缩进
set cindent                 " 在 autoindent 基础之上识别C风格自动缩进

colorscheme desert

set nu
set showcmd
" 插入模式键入3个字符，之后按5下删除，只能删除3个字符加得到两声嘟嘟，start 解决这个问题。
" 插入模式下，光标处于行首，按下删除，得到嘟嘟，eol 解决这个问题。
" 设置了自动缩进后，如果前一行缩进了一定距离，按下回车后，下一行也会保持相同的缩进。默认情况下，我们不能在 Insert 模式下直接按 Backspace 删除行首的缩进，indent 解决了这个问题。
set backspace=eol,start,indent
set whichwrap=b,s,<,>,[,]	" 默认情况下，在 VIM 中当光标移到一行最左边的时候，我们继续按左键，光标不能回到上一行的最右边。同样地，光标到了一行最右边的时候，我们不能通过继续按右跳到下一行的最左边。
" 除了 $ . * ^ 之外其他元字符都要加反斜杠。因为众口难调，有些人喜欢正则表达式，有些人不喜欢。
set magic
" 搜索时及时显示
set showmatch
" 开启实时显示搜索结果功能。随着按键，屏幕会动。
set incsearch
" 高亮显示搜索结果
set hlsearch
" 搜索时大小写不敏感
set ignorecase
" 设置智能模式，当你查找键入的内容都是小写则大小写都会匹配，如果键入内容包含大写则就是大小写敏感
set smartcase
" 不用备份
set nobackup
set nowb
" 不用swap文件
set noswapfile
set wildmenu                " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来
set tw=80					" 光标超过 80 列的时候折行
set lbr						" 不在单词中间断行
set fo+=mB					" 打开断行模块对亚洲语言支持。m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格。

set expandtab               " 编辑时将所有 Tab 替换为空格，有了这个设置才能使 ts 和 sw 对应的字符成为空格
set smarttab                " 按一下 Backspace 就删除 tabstop 个空格
set shiftwidth=4            " 自动缩进的时候，缩进尺寸为 4 个字符
set tabstop=4               " Tab 宽度为 4 个字符

set history=400

set encoding=utf-8           " VIM内部使用编码格式
set fileencodings=utf-8,gb2312,gb18030,ucs-bom,latin1    " http://edyfox.codecarver.org/html/vim_fileencodings_detection.html

if &term == "xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

" 右下角显示光标当前位置
set ruler
set laststatus=2        " 总是显示状态栏
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\[%{&fileformat}]\[%{&encoding}]\[%{strftime(\"%Y-%m-%d\ %H:%M:%S\")}] 
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 


let mapleader=","

"定义编辑配置文件快捷键
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

set mouse=a					" 打开鼠标功能


" taglist 插件
nmap <F7> :TlistToggle <CR>

" SuperTab 插件
" 记住上次的补全方式，直到按ESC退出插入模式为止
let g:SuperTabRetainCompletionType=2
" 使用TAB来进行补全
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

" --c++-kinds=+p : 为标签添加函数原型(prototype)信息
" --fields=+iaS : 为标签添加继承信息(inheritance)，访问控制(access)信息，函数特征(function Signature,如参数表或原型等)
" --extra=+q : 为类成员标签添加类标识
nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
set tags+=tags
set tags+=~/.vim/tags/libc.tags
set tags+=~/.vim/tags/cpp.tags
set tags+=~/.vim/tags/glib.tags
set tags+=~/.vim/tags/susv2.tags
set tags+=~/work_sp/tab/tags

set completeopt=longest,menu

" OmniCppComplete 插件
" 会安装以下文件
" after\ftplugin\cpp.vim
" autoload\omni\common\debug.vim
" autoload\omni\common\utils.vim
" autoload\omni\cpp\complete.vim
" autoload\omni\cpp\includes.vim
" autoload\omni\cpp\items.vim
" autoload\omni\cpp\maycomplete.vim
" autoload\omni\cpp\namespaces.vim
" autoload\omni\cpp\settings.vim
" autoload\omni\cpp\tokenizer.vim
" autoload\omni\cpp\utils.vim
" doc\omnicppcomplete.txt
" OmniComplete 并不是插件的名字，而是 Vim 众多补全方式中的一种（全能补全）。
" OmniComplete 其实就是根据光标前的内容猜测光标后的内容，具体怎么猜取决于所采用的脚本。
" OmniCppComplete 就是专为 C/C++ 编写的 OmniComplete 一个补全脚本。
let OmniCpp_NamespaceSearch=1       " 查找当前文件缓冲区内的命名空间
let OmniCpp_GlobalScopeSearch=1     " 允许全局查找控制
let OmniCpp_ShowAccess=1            " 显示访问控制信息
let OmniCpp_MayCompleteDot=1        " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow=1      " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope=1      " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces=["std","_GLIBCXX_STD"]    " 默认命名空间列表，使用','隔开。
