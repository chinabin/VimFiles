"=============================================================================
" General settings
"=============================================================================

" �رռ���
set nocompatible
" ���ñ���
set nobackup
" ����swap�ļ�
set noswapfile
" �Զ��ı�·��
set autochdir

" Tab related
set tabstop=4				" Tab ���Ϊ 4 ���ַ�
set shiftwidth=4			" �Զ�������ʱ�������ߴ�Ϊ 4 ���ַ�
set smarttab				" ��һ�� Backspace ��ɾ�� tabstop ���ո�
set expandtab				" �༭ʱ������ Tab �滻Ϊ�ո�����������ò���ʹ ts �� sw ��Ӧ���ַ���Ϊ�ո�
set ambiwidth=double		" ��ֹ��������޷�������ʾ

" Format related
set tw=80					" ��곬�� 80 �е�ʱ������
set lbr						" ���ڵ����м����
set fo+=mB					" �򿪶���ģ�����������֧�֡�m ��ʾ��������������֮����У���ʹ����֮��û�г��ֿո�B ��ʾ�����кϲ�Ϊһ�е�ʱ�򣬺����뺺��֮�䲻Ҫ���ո�

" Indent related
set cindent					" C����Զ�����
set autoindent				" �Զ�����

" Editing related
set backspace=start			" ����ģʽ����3���ַ���֮��5��ɾ����ֻ��ɾ��3���ַ��ӵõ������ལ�start ���������⡣
set backspace=eol			" ����ģʽ�£���괦�����ף�����ɾ�����õ��ལ�eol ���������⡣
set backspace=indent		" �������Զ����������ǰһ��������һ�����룬���»س�����һ��Ҳ�ᱣ����ͬ��������Ĭ������£����ǲ����� Insert ģʽ��ֱ�Ӱ� Backspace ɾ�����׵�������indent �����������⡣
set whichwrap=b,s,<,>,[,]	" Ĭ������£��� VIM �е�����Ƶ�һ������ߵ�ʱ�����Ǽ������������겻�ܻص���һ�е����ұߡ�ͬ���أ���굽��һ�����ұߵ�ʱ�����ǲ���ͨ����������������һ�е�����ߡ�
set mouse=a					" ����깦��
set selectmode=				" ��ʹ�� selectmode��ѡ��ģʽ���ǰ�ס���ѡ���ı�
set mousemodel=popup		" ���Ҽ��������ڵ�ʱ�򣬵�����ݲ˵���
set keymodel=				" ��ʹ�á�Shift + �������ѡ���ı�
set selection=inclusive		" ָ����ѡ���ı�ʱ���������λ��Ҳ���ڱ�ѡ�еķ�Χ��
set wildmenu				" ������ģʽ��ʹ�� Tab �Զ���ȫ��ʱ�򣬽���ȫ����ʹ��һ��Ư���ĵ��в˵���ʽ��ʾ����

" Encoding related
set encoding=utf-8			" VIM�ڲ�ʹ�ñ����ʽ
set langmenu=zh_CN.UTF-8	" ʹ�����Ĳ˵�����ʹ�� UTF-8 ����
" language message zh_CN.UTF-8	" ʹ��������ʾ��Ϣ����ʹ�� UTF-8 ����
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1		" http://edyfox.codecarver.org/html/vim_fileencodings_detection.html

set list					" ��ʾ���ɼ��ַ�
set listchars=tab:?\ ,trail:\ ,extends:?,precedes:?		" ���Ʊ�� tab ��ʾΪ �� ;��β���ո� trail ��ʾΪ �� ;�����򳬳���Ļ��Χ���� precedes ��ʶΪ ? ;���Ҳ೬����Ļ��Χ���� extends ��ʶΪ ?
highlight SpecialKey ctermbg=Red guibg=Red	" ctermbg �ǲ�ɫ�ն˱���ɫ��guibg ��GUI����ɫ

" File type related
filetype plugin indent on

" Display related
" ������ʾ״̬��
set laststatus=2
" ���½���ʾ��굱ǰλ��
set ruler
" �����к���ʾ
set number

if has("gui_running")
	" ��ֹ��ʾ������
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R
	" ��ֹ��ʾ�˵��͹�����
	set guioptions-=m
	set guioptions-=T
endif

" ȥ����ӭ����
set shortmess=atI 
" ����ʵʱ��������
set incsearch
" ����ʱ��ʱ��ʾ
set showmatch
" ����ʱ��Сд������
set ignorecase
" ��������ģʽ��������Ҽ�������ݶ���Сд���Сд����ƥ�䣬����������ݰ�����д����Ǵ�Сд����
set smartcase
" ��״̬����ʾĿǰ��ִ�е�ָ��
set showcmd
" ��ɫ����
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd
" ������ʾ�������
set hlsearch
" �򿪹ؼ�����ɫ
syntax on

" ============================================================================
" Shortcuts
" ============================================================================

let mapleader=","

" �����ݼ������׺���β
nmap <Leader>lb 0
nmap <Leader>le $
" ���ÿ�ݼ���ѡ���ı��鸴����ϵͳ������
vnoremap <Leader>y "+y
" ���ÿ�ݼ���ϵͳ����������ճ���� vim
nmap <Leader>p "+p
" ���α����Ӵ���
nnoremap nw <C-W><C-W>
" ��ת���ҷ��Ĵ���
nnoremap <Leader>lw <C-W>l
" ��ת���󷽵Ĵ���
nnoremap <Leader>hw <C-W>h
" ��ת���Ϸ����Ӵ���
nnoremap <Leader>kw <C-W>k
" ��ת���·����Ӵ���
nnoremap <Leader>jw <C-W>j
"����༭�����ļ���ݼ�
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" �����ݼ��ڽ�Է�֮����ת������pair
nmap <Leader>pa %

"=============================================================================
" File types
"=============================================================================

" �����ļ��������
filetype on
" ������⵽�Ĳ�ͬ���ͼ��ض�Ӧ�Ĳ��
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
