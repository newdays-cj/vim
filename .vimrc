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

"每个插件都应该在这一行之前
call vundle#end()            " 这是必需的
filetype plugin indent on    " 这是必需的
