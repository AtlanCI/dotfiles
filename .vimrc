" ==================================================
" 配置篇
" ==================================================

" 语法高亮
syntax on

" 关闭自动折行
set nowrap

" 横向滚动一次 40 个字符,
set sidescroll=40
" 垂直滚动时，光标距离顶部/底部的位置（单位：行）
set scrolloff=5
" 水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用
set sidescrolloff=15

" 不创建备份文件
set noback

" 搜索时，高亮显示匹配结果
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch
" 搜索时忽略大小写 
set ignorecase
" 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感
" 其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test
set smartcase

" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible

" 在状态栏显示光标的当前位置（位于哪一行哪一列）
set ruler
" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set relativenumber
" 显示行号
set number
" 光标所在的当前行高亮
set cursorline
" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2
" 命令模式下，在底部显示，当前键入的指令
set showcmd 
" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch
" 在底部显示，当前处于命令模式还是插入模式
set showmode

" Vim 需要记住多少次历史操作
set history=1000
" 与系统共用剪切板
set clipboard+=unnamed
set clipboard+=ideaput

" 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示
set autoread

" 支持使用鼠标
set mouse=a

" Tab 转为多少个空格
set softtabstop=2
" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent

" 出错时，不要发出响声
set noerrorbells

" 允许退格键在以下场景下正常执行
set backspace=indent,eol,start


" ==================================================
" 映射篇
" ==================================================

" L 移动到行尾
nnoremap L $
vnoremap L $

" H 移动到行首
nnoremap H ^
vnoremap H ^

" 移动时 自动定位到屏幕中心
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz
noremap # #zz
noremap * *zz
noremap w wzz
noremap W Wzz
noremap e ezz
noremap E Ezz
noremap b bzz
noremap B Bzz
noremap H Hzz
noremap L Lzz
noremap 0 0zz
noremap $ $zz
noremap ^ ^zz
noremap j jzz
noremap k kzz
noremap G Gzz
noremap u uzz
noremap ( (zz
noremap ) )zz
noremap { {zz
noremap } }zz
noremap [{ [{zz
noremap ]} ]}zz
