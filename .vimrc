set nocompatible              " 这是必需的
filetype off                  " 这是必需的

set background=dark
colorscheme molokai

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

Plugin 'Yggdroot/LeaderF'

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

let mapleader="\<space>"

" ctags "
set tags=tags
map <C-]> g]

noremap nt <Esc>:tabnew
noremap tn <Esc>:tabn<CR>
noremap tp <Esc>:tabp<CR>

" Leaderf configuration "
" https://github.com/Yggdroot/LeaderF "
" do not show the help in nomal mode "
let g:Lf_HideHelp=1
let g:Lf_UseCache=0
let g:Lf_UseVersionControlTool=0
let g:Lf_IgnoreCurrentBufferName=1
" popup mode "
let g:Lf_WindowPosition='bottom'
let g:Lf_WindowHeight=0.2
let g:Lf_PreviewHorizontalPosition='right'
let g:Lf_PreviewInPopup=1
let g:Lf_PreviewResult={'File':1,'Buffer':1,'Mru':1,'Tag':1,'Function':1,'Line':1,'Colorscheme':1,'Rg':1,'Gtags':1}

noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s","")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s","")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s","")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s","")<CR><CR>

" noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
" noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
" noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
noremap <leader>up <Esc>:Leaderf gtags --update<CR>
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

