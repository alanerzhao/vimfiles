" ----------------- Author  : alanerzhao -----------------"
" ----------------- Email   : alanerzhao@gmail.com -----------------"
" ----------------- WebSite : http://www.rankber.com -----------------"
" ----------------- Date    : 2013-12-10 -----------------"
""TODO
""增加了Less sass 高亮功能
""增加了HTML5提示
""更新了color插件
""Javascript配色过重，如果需要换回默认把syntax里的old改成javascript把原有的删掉即可
""移动了plugin,acp插件在acp文件夹，
""2013.10.10 加入了markdown语法高亮
""加入handlebars mustache模板支持
""编辑器改用英文
""增加git-vim funview

source $VIMRUNTIME/vimrc_example.vim
"" 取消window设定
source $VIMRUNTIME/mswin.vim


behave mswin
""修改_vimrc后自动生效
autocmd! bufwritepost _vimrc source %

""编辑配置:
 set shortmess=atI	    ""启动的时候不显示那个援助索马里儿童的提示
 set nocompatible       ""关闭vi兼容模式
 set linespace=4
 set autoindent         ""自动对齐
 set smartindent        ""智能自动缩进
 set shiftwidth=4       ""换行时行间交错4空格
 set tabstop=4          ""设置tab键的宽度
 set softtabstop=4      ""退格键删除4空格
 set expandtab        ""缩进采用空格 tab用noexpandtab  空格用expandtab
 ""set noscrollbind       "" 禁止分屏滚动
 set number             ""显示行号
 ""set textwidth=80     ""每行80个字符自动换行
 set ruler              ""显示标尺
 set mouse=a            ""启用鼠标
 set noerrorbells
 set novisualbell
 set t_vb=             "关闭提示音
 set autoread           ""自动重新读入
 set backspace=indent,eol,start ""插入模式下使用 <BS>、<Del> <C-W> <C-U>
 set nospell            ""拼写检查
 set cursorline         "" 高亮光标所在的行
 set showmatch          ""括号配对情况
 set noignorecase       ""搜索区分大小写
 set hlsearch           "" 开启高亮显示结果
 set incsearch          "" 开启实时搜索功能
 set nobomb             ""不使用Unicode bom签名
 set nobackup           ""关闭备份
 set noswapfile         ""关闭.swp
 set history=50         ""保留历史记录
 set showcmd            "" 状态栏显示目前所执行的指令
 set wildmenu           ""命令行于状态行
 set foldmethod=marker  "" 代码折叠
 set tabpagemax=9       ""标签最多显示9页
 set showtabline=1      ""标签默认显示1页
 set wrap               ""设置自动换行,可以改成nowrp
 set numberwidth=4      ""行号宽度
 set equalalways        ""分割窗口时保持相等的宽/高
 set clipboard+=unnamed ""共享剪贴板
 set ambiwidth=double   ""防止符号无法显示
 set list               ""tab符号
 set so=7
 set matchpairs=(:),{:},[:],<:> ""匹配对
 ""set matchtime=5              ""显示符合匹配在0.5秒
 set cmdheight=1                ""信念楼兰行高
 set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
 set laststatus=2                ""开启状态栏信息
 set backupext=.bak              ""备份文件后缀
 set fileformat=unix             ""文件格式，默认 ffs=dos,unix
 set fileformats=unix,dos,mac
 set whichwrap+=<,>,h,l,b,s,[,]  ""换行
 set complete=.,w,b,k,t,i        ""自动完成
 set completeopt=longest,menu
 set helplang=cn                 ""中文文档
 syntax on                       "文件侦测
 filetype plugin indent on       "不同文件类型加载插件
 syntax enable                   "语法高亮

 "" 定义 <Leader> 为逗号
 let mapleader = ","
 let maplocalleader = ","


 "" 黓认状态栏格式
 hi StatusLine  guifg=#FFFFFF guibg=#393939 gui=none
 if version >= 700
     autocmd InsertEnter * hi StatusLine guifg=#E0E0E0 guibg=Grey40 gui=none
     autocmd InsertLeave * hi StatusLine guifg=#FFFFFF guibg=#393939 gui=none
 endif
 set statusline=\ %F%m%r%h\ [%Y]\ [%{&ff}]\ %w\ \ \ \ \ Encoding:\ %{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\"[BOM]\":\"\")}\ \ \ \ \ Line:\ %l\|%L:%c\ [%p%%-%P]

 "" 字体设置
 if has("win32")
    set guifont=Yahei_Monaco:h9:cANSI
     ""exec 'set guifont='.iconv('Consolas', &enc, 'gbk').':h10:cANSI'
     ""exec 'set guifontwide='.iconv('楷体', &enc, 'gbk').':h14'
 endif
 ""配置颜色solarized  yytextmate Tomorrow-Night-Bright  Tomorrow-Night-Eighties
 if has('syntax')
     colorscheme Tomorrow-Night-Bright
 endif

 "" encoding编码设置
 set encoding=utf-8
 set termencoding=utf-8
 if has ('win32')
      language english
     set fileencoding=utf-8
 else
     set fileencoding=utf-8
 endif
 set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

 ""Diff 模式的时候鼠标同步滚动 for Vim7.3
 ""if has('cursorbind')
  ""  set cursorbind
 ""end

 ""更改为英文
 set langmenu=english.utf-8
 ""set langmenu=gb2312.utf-8
 language messages english.utf-8

 ""语言后加载
 source $VIMRUNTIME/delmenu.vim
 source $VIMRUNTIME/menu.vim

 ""给 Win32 下的 gVim 窗口设置透明度
 au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 250)

 ""F11 窗口最大化
 map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

 ""窗口启动时自动最大化
 ""窗口设置
 au GUIEnter * simalt ~x
     if has('gui_running')
       set guioptions=mr       "c去掉"
       set guioptions=         ""隐藏全部
       set guioptions+=m       " 隐藏菜单栏
       set guioptions-=T       " 隐藏工具栏
       set guioptions-=L       " 隐藏左侧滚动条
       set guioptions+=r       " 隐藏右侧滚动条
       ""set guioptions-=b     " 隐藏底部滚动条
       ""set showtabline-=0    " 隐藏Tab栏
	 endif

 ""自动改变当前目录
 if has('netbeans_intg')
    set autochdir
 endif
 ""如果为空文件，则自动设置当前目录为桌面
 " lcd ~/Desktop/

 ""快捷键
 ""insert mode shortcut 输入模式
 inoremap <C-h> <Left>
 inoremap <C-j> <Down>
 inoremap <C-k> <Up>
 inoremap <C-l> <Right>
 inoremap <C-d> <DELETE>

 ""command line 命令模式
 cnoremap <C-A> <Home>
 cnoremap <C-E> <End>
 cnoremap <C-B> <Left>
 cnoremap <C-F> <Right>

 ""标签翻页快捷键
 map <leader>tt :tabnew<cr>
 map gn :tabnext<cr>
 map gt :tabprevious<cr>
 map go :tabonly<cr>
 map gc :tabclose<cr>
 map gm :tabmove
 nmap <C-Tab> :tabnext<cr>

 ""取消上下左右
 noremap <Up> <nop>
 noremap <Down> <nop>
 noremap <Left> <nop>
 noremap <Right> <nop>

 ""退出快捷键
 map Q :x<cr>

 ""映射esc
 :imap jj <Esc>

 ""查找替换
  map <C-H> :%s/
 ""imap <C-H> <Esc><C-H>

 ""alt + / 取消高亮
 map <A-/> :nohlsearch<CR>

 ""全选
 map <leader>a ggVG

 ""删除windows的^M
 map <leader>M :%s/\r//g<cr>

 ""删除所有行未尾空格
 nnoremap <F7> :%s/[ \t\r]\+$//g<cr>

 "" 匹配配对的字符
 func! MatchingQuotes()
    inoremap ( ()<left>
    inoremap [ []<left>
    inoremap { {}<left>
    inoremap " ""<left>
    inoremap ' ''<left>
 endf

 "一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
 nnoremap <leader>1 :set filetype=xhtml<cr>
 nnoremap <leader>2 :set filetype=css<cr>
 nnoremap <leader>3 :set filetype=javascript<cr>
 nnoremap <leader>4 :set filetype=php<cr>
 nnoremap <leader>5 :set filetype=less<cr>
 nnoremap <leader>6 :set filetype=mustache<cr>
 nnoremap <leader>7 :set filetype=markdown<cr>

 "" 自动补全括号，包括大括号
 :inoremap ( ()<ESC>i
 :inoremap ) <c-r>=ClosePair(')')<CR>
 "":inoremap { {<CR>}<ESC>O
 :inoremap } <c-r>=ClosePair('}')<CR>
 :inoremap [ []<ESC>i
 :inoremap ] <c-r>=ClosePair(']')<CR>
 :inoremap " ""<ESC>i
 :inoremap ' ''<ESC>i
 function! ClosePair(char)
     if getline('.')[col('.') - 1] == a:char
         return "\<Right>"
     else
         return a:char
     endif
 endfunction

 "" 新建 XHTML 、PHP、Javascript 文件的快捷键 特殊插件
""普通模式下
nmap ht :NewTemplateTab html<cr>
nmap xh :NewTemplateTab xhtml<cr>
nmap ph :NewTemplateTab php<cr>
nmap ja :NewTemplateTab javascript<cr>
nmap cs :NewTemplateTab css<cr>
nmap h5 :NewTemplateTab html5<cr>
nmap ha :NewTemplateTab header<cr>
nmap fo :NewTemplateTab footer<cr>

""Javascript Syntax
au FileType javascript call JavaScriptFold()

""设置css缩进
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab

""CSS3语法支持
au BufRead,BufNewFile *.css set ft=css syntax=css3

" 将指定文件的换行符转换成 UNIX 格式
au FileType php,javascript,html,css,python,vim,vimwiki set ff=unix

""javascript and jquery code
au FileType html,javascript let g:javascript_enable_domhtmlcss = 1

" jquery.vim
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

""json
au! BufRead,BufNewFile *.json set filetype=json

""less
nnoremap ,q :w <BAR> !lessc % > %:t:r.css<CR><space>

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

" 删除所有行未尾空格
nnoremap <F7> :%s/[ \t\r]\+$//g<cr>

" 关闭VIM的时候保存会话，按ctrl+@读取会话
set sessionoptions=buffers,sesdir,help,tabpages,winsize
let $VIMSESSION = '~/.session.vim'
au VimLeave * mks! $VIMSESSION
map <C-@> :so $VIMSESSION<CR>

 ""插件使用非 Bundle
 ""pathogen
 call pathogen#infect()

 ""NERDTree快捷键
 map <F10> :NERDTreeToggle<CR>
 let g:NERDTreeShowBookmarks = 1
 let g:NERDTreeChDirMode = 2
 let NERDTreeIgnore=['\.pyc$','\.svn$','\.tmp$','\.bak$','\~$']
 "set modifiable

 ""日历
 map ca :Calendar<CR>

 "" ZenCoding
let g:user_emmet_expandabbr_key='<c-o>'
 "let g:user_emmet_mode='n'    "only enable normal mode functions.
 "let g:user_emmet_mode='inv'  "enable all functions, which is equal to
 "let g:user_emmet_mode='a'    "enable all function in all mode.
 "let g:use_zen_complete_tag = 1

 ""MRU相当于以前打开
 map <leader>mr :MRU <cr>
 let MRU_Max_Entries = 1000
 let MRU_Max_Menu_Entries = 20
 let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
 let MRU_Window_Height = 8

 ""Fencview 关闭自动检测编码改为手动
 let g:fencview_autodetect=0
 map <F2> :FencView<CR>

 ""AutoComplPop 关闭acp自动完成缓存打开变成1
 let g:acp_enableAtStartup = 0

 ""superTab
 ""let g:SuperTabDefaultCompletionType = "<c-n>"

 ""Jsbeautify
 au FileType javascript map <f12> :call g:Jsbeautify()<cr>
 autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

 "DoxygenToolkit.vim
 map <leader>d :Dox<cr>
 let g:DoxygenToolkit_authorName="baozi"
 let g:DoxygenToolkit_licenseTag="My own license\<enter>"
 let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
 let g:DoxygenToolkit_briefTag_pre = "@brief\t"
 let g:DoxygenToolkit_paramTag_pre = "@param\t"
 let g:DoxygenToolkit_returnTag = "@return\t"
 let g:DoxygenToolkit_briefTag_funcName = "no"
 let g:DoxygenToolkit_maxFunctionProtoLines = 30

" Default mapping
 let g:multi_cursor_next_key='<C-m>'
 let g:multi_cursor_prev_key='<C-p>'
 let g:multi_cursor_skip_key='<C-x>'
 let g:multi_cursor_quit_key='<Esc>'

" Default highlighting (see help :highlight and help :highlight-link)
 highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
 highlight link multiple_cursors_visual Visual 

""TagsbarToggle
nmap <F5> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30

 ""ctags
nmap <F9> <Esc>:!ctags -R *<CR>

""taglist配置
""TlistUpdate更新taglisat
map <F6> :silent! Tlist<CR>
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Process_File_Always=0 "是否一直处理tags.1:处理;0:不处理。不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth=0

""authorinfo作者信息
 nmap <F4> :AuthorInfoDetect<CR>
 let g:vimrc_author='baozi'
 let g:vimrc_email='alanerzhao@gmail.com'
 let g:vimrc_homepage='http://www.rankber.com'

 " vimwiki基本配置
 let g:vimwiki_list = [{'path': 'E:/Dropbox/Dropbox/wiki/',
 \ 'path_html': 'E:/Dropbox/Dropbox/wiki/html/',
 \ 'html_header': 'E:/Dropbox/Dropbox/template/header.html',
 \ 'html_footer': 'E:/Dropbox/Dropbox/template/footer.html',
 \ 'diary_link_count': 5,
 \ 'nested_syntaxes': {'Asm': 'asm', 'C': 'c', 'C++': 'cpp','Java': 'java', 'Haskell': 'haskell', 'Lua': 'lua', 'Perl': 'perl', 'Python': 'python', 'PHP': 'php', 'HTML': 'html', 'Bash': 'sh', 'Vim': 'vim', 'Make': 'make', 'Automake': 'AUTOMAKE'},}]

 let g:vimwiki_use_mouse = 1
 " 标记为完成的 checklist 项目会有特别的颜色
 let g:vimwiki_hl_cb_checked = 1
 " 不要将驼峰式词组作为 Wiki 词条
 let g:vimwiki_camel_case = 0
 " 声明可以在wiki里面使用的HTML标签
 let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h2,h4,h5,h6,pre,script,style'
 ""生成html 快捷键
 map <leader>ml <Plug>Vimwiki2HTML
 ""把所有wiki生成html
 map <leader>aml <Plug>VimwikiAll2HTML


 " 指定 jsLint 调用路径，通常不用更改
let g:jslint_command = 'jsl'
" 指定 jsLint 的启动参数，可以指定相应的配置文件
let g:jslint_command_options = '-nofilelisting -nocontext -nosummary -nologo -process'

" 插件的主要调用方式
""autocmd BufWritePost,FileWritePost *.js call JsonLint()
map <C-q><C-p> :call JsonLint()<cr>
if has('win32')
    let g:checksyntax_cmd_javascript  = 'jsl -conf '.shellescape($VIM . '\vim\vimfiles\jsl\jsl.conf')
endif
let g:checksyntax_cmd_javascript .= ' -nofilelisting -nocontext -nosummary -nologo -process'

""功能函数
 ""自定义函数,通过call来使用
 " 获取当前目录
 func! GetPWD()
    return substitute(getcwd(), "", "", "g")
 endf

 ""ctrl+g插入时间
 imap <C-g> <C-r>=GetDateStamp()<cr>

 " 返回当前时期
 func! GetDateStamp()
    return strftime('%Y-%m-%d')
 endfunction

 " 全选
 func! SelectAll()
    let s:current = line('.')
    exe "norm gg" . (&slm == "" ? "VG" : "gH\<C-O>G")
 endf

"自动补全html结束标签
function! InsertHtmlTag()
let pat = '\c<\w\+\s*\(\s\+\w\+\s*=\s*[''#$;,()."a-z0-9]\+\)*\s*>'
  normal! a>
  let save_cursor = getpos('.')
  let result = matchstr(getline(save_cursor[1]), pat)
  if (search(pat, 'b', save_cursor[1]))
    normal! lyiwf>
    normal! a</
    normal! p
    normal! a>
  endif
  :call cursor(save_cursor[1], save_cursor[2], save_cursor[3])
endfunction

if v:version < 700
    echoerr 'This vimrc requires Vim 7 or later.'
    finish
endif

" 直接查看第一行生效的代码
nmap <Leader>gff :call GotoFirstEffectiveLine()<cr>

" 跳过页头注释，到首行实际代码
func! GotoFirstEffectiveLine()
    let l:c = 0
    while l:c<line("$") && (
                \ getline(l:c) =~ '^\s*$'
                \ || synIDattr(synID(l:c, 1, 0), "name") =~ ".*Comment.*"
                \ || synIDattr(synID(l:c, 1, 0), "name") =~ ".*PreProc$"
                \ )
        let l:c = l:c+1
    endwhile
    exe "normal ".l:c."Gz\<CR>"
	endif
endfunction


" linux:
" set rtp+=~/.vim/bundle/vundle/
" windows:
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')
