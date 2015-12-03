let mapleader=","
" �����ļ��������
filetype on
" ������⵽�Ĳ�ͬ���ͼ��ض�Ӧ�Ĳ��
filetype plugin on
" �����ݼ������׺���β
nmap <Leader>lb 0
nmap <Leader>le $
" ���ÿ�ݼ���ѡ���ı��鸴����ϵͳ������
vnoremap <Leader>y "+y
" ���ÿ�ݼ���ϵͳ����������ճ���� vim
nmap <Leader>p "+p
" �����ݼ��رյ�ǰ�ָ��
nmap <Leader>q :q<CR>
" �����ݼ����浱ǰ��������
nmap <Leader>w :w<CR>
" �����ݼ��������д������ݲ��˳� vim
nmap <Leader>WQ :wa<CR>:q<CR>
" �����κα��棬ֱ���˳� vim
nmap <Leader>Q :qa!<CR>
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
"��ʾ���з���tab
"set list
"��������tab�Ϳո���ŵ���ʾ
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
"����tab�ÿո�������
"set listchars=tab:\|\ ,
"�رջ��з���tab����ʾ
"set nolist
"ȥ����ӭ����
set shortmess=atI 
"�������
"set mouse=a
"��ֹ���
"set mouse=
"�رշ��˵���ʾ��
set vb t_vb=
" ����ʵʱ��������
set incsearch
"����ʱ��ʱ��ʾ
set showmatch
"���ñ���
set nobackup
"����swap�ļ�
set noswapfile
" ����ʱ��Сд������
set ignorecase
"��������ģʽ
set smartcase
"��ʾ����
set showcmd
" �رռ���ģʽ
set nocompatible
" vim ����������ģʽ���ܲ�ȫ
set wildmenu
" ��ɫ����
set background=dark
"colorscheme solarized
"colorscheme molokai
colorscheme phd
" ��ֹ�����˸
set gcr=a:block-blinkon0
" ��ֹ��ʾ������
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" ��ֹ��ʾ�˵��͹�����
set guioptions-=m
set guioptions-=T
" ������ʾ״̬��
set laststatus=2
" ���½���ʾ��굱ǰλ��
set ruler
" �����к���ʾ
set number
" ������ʾ��ǰ��/��
set cursorline
set cursorcolumn
" ������ʾ�������
set hlsearch
" ���� gvim ��ʾ����
"set guifont=YaHei\ Consolas\ Hybrid\ 11.5
" �����﷨��������
syntax enable
" ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���
syntax on

"�Զ��ı�·��
set autochdir
"��������
set autoindent
set smartindent
set cindent

"����tab
set tabstop=4
set softtabstop=4
set smarttab
