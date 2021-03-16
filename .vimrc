set nocompatible              " 这是必需的
filetype off                  " 这是必需的

" 在此设置运行时路径
set rtp+=~/.vim/bundle/Vundle.vim
" vundle初始化
call vundle#begin()
" 或者传递一个 Vundle 安装插件的路径
"call vundle#begin('~/some/path/here')

" 让 Vundle 管理 Vundle, 必须
Plugin 'VundleVim/Vundle.vim'

" 高亮单词 "
Plugin 'lfv89/vim-interestingwords'

"每个插件都应该在这一行之前
call vundle#end()            " 这是必需的
filetype plugin indent on    " 这是必需的

set nu				" 显示行号
syntax on			" 语法高亮
set showcmd			" 显示模式
set autoindent			" 自动缩进
set cursorline			" 高亮当前行
set textwidth=120		" 单行字符数目
set wrap			" 自动折行
set showmatch			" 高亮匹配的括号
set hlsearch			" 高亮匹配结果
set noswapfile			" 不创建swap文件

" ctags "
set tags=tags
map <C-]> g]
