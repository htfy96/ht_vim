" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
execute pathogen#infect()
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible
let g:airline#extensions#syntastic#enabled = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_cflags = '-Lboost -std=c++11'
let g:syntastic_cpp_checkers = ['clang_check']
let g:clang_library_path = '/usr/lib/llvm-3.5/lib'
let g:SuperTabDefaultCompletionType = "<M-z>"
let g:clang_periodic_quickfix=0
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_user_options=' -std=c++11 -Lboost'    
let g:clang_auto_select = 1
let g:clang_complete_macros = 1
let g:colorsupport_cube_name="xterm256"
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<M-z>'
let g:tagbar_compact = 1
let g:tagbar_width = 30
let g:ackhighlight = 1

let g:ack_use_dispatch = 1
let g:visualHtml#clcb#geometry = "1400x1000+1944+4"
let g:tagbar_expand = 1
let g:eighties_enabled = 1
let g:eighties_minimum_width = 20
let g:eighties_extra_width = 2 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum + extra
" Only do this part when compiled with support for autocommands.
if has("autocmd")
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
endif
syntax on            " 语法高亮

set cursorline
set lines=38 columns=120

set guifont=CourierPP\ 11
" detect file type
filetype on
filetype plugin on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    "have Vim load indentation rules and plugins according to the detected filetype
    filetype plugin indent on
endif
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.

"set ignorecase        " 搜索模式里忽略大小写
"set smartcase        " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
set autowrite        " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
set autoindent        " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set smartindent        " 智能对齐方式
set tabstop=4        " 设置制表符(tab键)的宽度
set smarttab
set softtabstop=4     " 设置软制表符的宽度    
set shiftwidth=4    " (自动) 缩进使用的4个空格
set et

set cindent            " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
"set backspace=2    " 设置退格键可用
set showmatch        " 设置匹配模式，显示匹配的括号
set linebreak        " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
set hidden " Hide buffers when they are abandoned
set mouse=a            " Enable mouse usage (all modes)    "使用鼠标
set number            " Enable line number    "显示行号
"set previewwindow    " 标识预览窗口
set history=50        " set command history to 50    "历史记录50条
set et

"--状态行设置--
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler            " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

"--命令行设置--
set showcmd            " 命令行显示输入的命令
set showmode        " 命令行显示vim当前模式

"--find setting--
set incsearch        " 输入字符串就显示匹配点
set hlsearch      	

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:vjde_completion_key='<c-x><c-o>'
if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif 
function! SetupPython()
    " Here, you can have the final say on what is set.  So
    " fixup any settings you don't like.
    set et
    set tabstop=3
    set shiftwidth=4
    set softtabstop=4
endfunction
command! -bar SetupPython call SetupPython()
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace ='Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep =''
let g:airline_right_sep = ''
let g:airline_right_alt_sep= ''
let g:airline_symbols.branch= ''
let g:airline_symbols.readonly= ''
let g:airline_symbols.linenr= ''
noremap <F11> :GtagsCursor<cr>
inoremap <F11> <esc>:GtagsCursor<cr>

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeMouseMode = 1

let NERDTreeWinSize = 25
let NERDTreeMinimalUI = 1
let g:SuperTabDefaultCompletionType = "<M-z>"
let g:SingleCompile_showquickfixiferror = 1
set tags+="/home/lz/桌面/linux-3.17.2/tags"
let g:SingleCompile_silentcompileifshowquickfix = 1
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
let g:tex_flavor='latex'
let g:vimshell_popup_command="30vsplit"
call SingleCompile#ChooseCompiler('cpp','clang')

call SingleCompile#ChooseCompiler('c','clang')

noremap <F8> :Tagbar<CR>
inoremap <F8> <ESC>:Tagbar<CR>

noremap <F7> :YcmDiags<CR>
inoremap <F7> <ESC>:YcmDiags<CR>
let g:rainbow_active = 1
set clipboard=unnamedplus
"------------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
"------------------------------------------------------------------------------
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:iswindows = 0
endif

"------------------------------------------------------------------------------
"  < 判断是终端还是 Gvim >
"------------------------------------------------------------------------------
if has("gui_running")
    let g:isGUI = 1
    colorscheme PerfectDark        " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下
else
    let g:SuperTabDefaultCompletionType = "<M-z>"
    colorscheme industry


    let g:isGUI = 0
endif

"------------------------------------------------------------------------------
"  < 编译、连接、运行配置 >
"------------------------------------------------------------------------------
" F9 一键保存、编译、连接存并运行


map <F4> :call WRun() <CR>"<c-x><c-u>"
map <F2> :NERDTreeToggle <CR>
imap <F2> <ESC>:NERDTreeToggle <CR>

imap <F4> :call WRun() <CR>
map <c-F4> :call WRunDebug() <CR>
imap <c-F4> :call WRunDebug() <CR>

map	<F5> :call DRun() <CR>
imap <F5> :call DRun() <CR>

map <F3> :call Pysh2() <CR>
imap <F3> :call Pysh2() <CR>
" Ctrl + F9 一键保存并编译
map <F9> :SCCompile<CR>
imap <F9> <ESC>:SCCompile<CR>
map <F10> :SCCompileRun<CR>
imap <F10> <ESC>:SCCompileRun<CR>

" Ctrl + F10 一键保存并连接"<c-x><c-u>"

map <c-F10> :SCCompile<CR>
imap <c-F10> <ESC>:SCCompile<CR>

map <c-F11> :call Quickmake()<CR>
imap <c-F11> <ESC>:call Quickmake()<CR>

map <C-Tab> gt
imap <C-Tab> gt

map <C-S-Tab> gT
imap <C-S-Tab> gT
" Move in INSERT
inoremap <M-h> <Left>

inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>

inoremap <M-e> <ESC>:VimShellExecute %:p:r<CR><C-w><C-w>i
noremap <M-e> <ESC>:VimShellExecute %:p:r<CR><C-w><C-w>i

inoremap <M-w> <ESC>:ConqueGdbBdelete<CR>
noremap <M-w> <ESC>:ConqueGdbBdelete<CR>
map <M-d> :bd<CR>
imap <M-d> :bd<CR>

noremap <M-n> :cn<CR>
inoremap <M-n> <ESC>:cn<CR>"<c-x><c-u>"

noremap <M-p> :cp<CR>
inoremap <M-p> <ESC>:cp<CR>

"--ctags setting--
"" 按下F5重新生成tag文件，并更新taglist
map <c-F3> :cd %:p:h<CR>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <c-F3> <ESC>:cd %:p:h<CR>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
map <c-F2> :cd %:p:h<CR>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q %:p<CR><CR> :TlistUpdate<CR>
imap <c-F2> <ESC>:cd %:p:h<CR>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q %:p<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file
set tags+=/home/lz/.config/geany~/* "add new tags file(刚刚生成tags的路径，在ctags -R 生成tags文件后，不要将tags移动到别的目录，否则ctrl+］时，会提示找不到源码文件)
set tags+=~/.vim/tag/*
set tags+=~/.vim/tag/std.tags
set tags+=~/.vim/tag/clang.tags
set tags+=~/.vim/tag/boost.cpp.tags
" auto close options when exiting insert mode
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" set completeopt=menu,menuone
"
" " -- configs --
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let g:ycm_filetype_whitelist= {'cpp':1,'c':1,'python':1,'python3':1,'csharp':1}
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 4
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#enable_auto_close_preview=1
let g:neocomplete#enable_fuzzy_completion=0
" Define dictionary.

let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
let g:neocomplete#enable_insert_char_pre=1
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd FileType cpp,c,python3,python,csharp NeoCompleteLock
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.javascript = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

function! s:my_cr_function()
    "return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

inoremap <F6> <ESC>ggyG
noremap <f6> ggyG
call neocomplete#smart_close_popup()

let g:EasyMotion_keys='asdfghjklqwertyiopzxcvbnm'
let g:EasyMotion_smartcase = 1
let g:vxlib_user_generated_plugins=1
let g:minimap_highlight='Visual'
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included
" files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e.
" parameters) in popup window
func! WRun()
    w
    cd %:p:h
    exe ":silent !gnome-terminal -x bash -c '%:p:r;read'"
endfunc
func! WRunDebug()
    w
    cd %:p:h
    exe ":silent !gnome-terminal -x bash -c 'gdb %:p:r;read'"
endfunc

func! DRun()
    w
    exe  ":ConqueTermVSplit ".expand("%:p:r")

endfunc

func! Pysh2()
    let g:ConqueTerm_PyVersion = 3
    exe ":VimShellPop"

endfunc

func! Quickmake()
    exe ":setlocal makeprg=make"
    echohl WarningMsg | echo "Making..."
    silent make
    redraw!
    exe ":bo cw"
endfunc
set guioptions=ra
set showtabline=0

augroup filetypedetect 
    au BufNewFile,BufRead *.def,*.cns,*.st setf mugen
augroup END
au   BufEnter *   execute ":lcd %:p:h" 
au VimEnter * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
autocmd FileType java set omnifunc=javacomplete#Complete
let g:easytags_async=1
let g:Gtags_Auto_Update = 1

