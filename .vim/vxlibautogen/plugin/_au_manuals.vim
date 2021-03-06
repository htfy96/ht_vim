" This file is autogenerated. DO NOT EDIT. Changes will be lost.
" Generator: vxlib/plugin.py
"if vxlib#plugin#StopLoading('_plugin_autogen_0b32b8:f9d8')
"   finish
"endif


let s:exception_list = []

function! s:StrHas(ftrlist)
 let ftrs=split(a:ftrlist, ',')
 let hftrs=[]
 for f in ftrs
  call add(hftrs, (has(f) ? '+' : '-') . f)
 endfo
 return join(hftrs, ' ')
endfunc
function! s:Exception(throwpoint, exception, plugid, loadstatus)
 if a:loadstatus != 0
  call vxlib#plugin#SetLoaded(a:plugid, a:loadstatus)
 endif
 call add(s:exception_list, matchstr(a:throwpoint, ',\s*\zsline\s\+\d\+') . ' (' . a:plugid . '):')
 call add(s:exception_list, '   ' . a:exception)
 let g:VxPluginErrors[a:plugid] = a:exception
endfunc

function! s:CheckSetting(name, default)
 if !exists(a:name)
  exec 'let ' . a:name . '=' . a:default
 endif
endfunc

function! s:IsEnabled(name)
 return vxlib#plugin#IsEnabled(a:name)
endfunc

function! s:GetLoadStatus(name)
 return vxlib#plugin#GetLoadStatus(a:name)
endfunc

function! s:SetLoaded(name, value)
 return vxlib#plugin#SetLoaded(a:name, a:value)
endfunc

function! s:SetEnabledDefault(name, value)
 if ! has_key(g:VxPlugins, a:name) && ! exists("g:vxenabled_" . a:name)
  call vxlib#plugin#SetEnabled(a:name, a:value)
 endif
endfunc

function! s:ContinueLoading(name)
 if ! vxlib#plugin#IsEnabled(a:name)
  call vxlib#plugin#SetLoaded(a:name, -1)
 elseif ! vxlib#plugin#GetLoadStatus(a:name)
  return 1
 endif
 return 0
endfunc

function! s:PluginExists(name, plugfile)
   try
      let knp = g:VxKnownPlugins[a:name]
      return knp != 0
   catch /.*/
   endtry
   if exists('g:loaded_' . a:name)
      exec 'let g:VxKnownPlugins[a:name]=g:loaded_'. a:name
      return 1
   endif
   if a:plugfile =~ '^\w\+/\w'
      let plugfiles=globpath(&rtp, a:plugfile)
      if len(plugfiles) > 0
         let g:VxKnownPlugins[a:name] = plugfiles
         return 1
      endif
   endif
   let g:VxKnownPlugins[a:name] = 0
   return 0
endfunc

if !exists("g:VxlibManuals_NewDisplayers")
 let g:VxlibManuals_NewDisplayers = []
endif

function! s:VxMan_AddTextDisplay(name, dispfn, datatypes)
 call add(g:VxlibManuals_NewDisplayers, ['t', a:name, a:dispfn, a:datatypes])
endfunc

function! s:VxMan_AddMenuDisplay(name, dispfn)
 call add(g:VxlibManuals_NewDisplayers, ['m', a:name, a:dispfn, ''])
endfunc

function! s:VxMan_AddListDisplay(name, dispfn, datatypes)
 call add(g:VxlibManuals_NewDisplayers, ['k', a:name, a:dispfn, a:datatypes])
endfunc

function! s:VxMan_AddGrepDisplay(name, dispfn, datatypes)
 call add(g:VxlibManuals_NewDisplayers, ['g', a:name, a:dispfn, a:datatypes])
endfunc

if !exists("g:VxlibManuals_NewGetters")
 let g:VxlibManuals_NewGetters = []
endif
function! s:VxMan_AddGetter(getterdef)
 call add(g:VxlibManuals_NewGetters, a:getterdef)
endfunc

if !exists("g:VxlibManuals_NewContexts")
 let g:VxlibManuals_NewContexts = []
endif
function! s:VxMan_AddContexts(contexts, getters)
 call add(g:VxlibManuals_NewContexts, [a:contexts, a:getters])
endfunc

" ================================
" Source: manuals/core.vim
" START Plugin
let s:curplugin='manuals_showmanual'
if s:ContinueLoading(s:curplugin)
 try        
  call s:CheckSetting('g:manuals_help_buffer', '"*Manual*"')
  nmap <silent> <unique> <Plug>VxManText :call manuals#core#ShowManual(v:count,'','t')<cr>
  vmap <silent> <unique> <Plug>VxManText :<C-U>call manuals#core#ShowManual(v:count,visualmode(),'t')<cr>
  nmap <silent> <unique> <Plug>VxManKeyword :call manuals#core#ShowManual(v:count,'','k')<cr>
  vmap <silent> <unique> <Plug>VxManKeyword :<C-U>call manuals#core#ShowManual(v:count,visualmode(),'k')<cr>
  nmap <silent> <unique> <Plug>VxManGrep :call manuals#core#ShowManual(v:count,'','g')<cr>
  vmap <silent> <unique> <Plug>VxManGrep :<C-U>call manuals#core#ShowManual(v:count,visualmode(),'g')<cr>
  nmap <silent> <unique> <Plug>VxManMenu :call manuals#core#ShowManual(v:count,'','m')<cr>
  vmap <silent> <unique> <Plug>VxManMenu :<C-U>call manuals#core#ShowManual(v:count,visualmode(),'m')<cr>

  call s:SetLoaded(s:curplugin, 1)
 catch /.*/
  call s:Exception(v:throwpoint, v:exception, s:curplugin, -9)
 endtry
endif
" END Plugin

" ================================
" Source: manuals/core.vim
" START Plugin
let s:curplugin='manuals_maps'
if s:ContinueLoading(s:curplugin)
 try        
  nmap K <Plug>VxManText
  vmap K <Plug>VxManText
  nmap <leader>kk <Plug>VxManKeyword
  vmap <leader>kk <Plug>VxManKeyword
  nmap <leader>kg <Plug>VxManGrep
  vmap <leader>kg <Plug>VxManGrep
  nmap <leader>km <Plug>VxManMenu
  vmap <leader>km <Plug>VxManMenu

  call s:SetLoaded(s:curplugin, 1)
 catch /.*/
  call s:Exception(v:throwpoint, v:exception, s:curplugin, -9)
 endtry
endif
" END Plugin

" ================================
" Source: manuals/display.vim
" START Plugin
let s:curplugin='manuals_display'
if s:ContinueLoading(s:curplugin)
 try        
  call s:VxMan_AddMenuDisplay('choice', 'manuals#display#InputList')

  call s:VxMan_AddTextDisplay('echo', 'manuals#display#Echo', 'lb')
  call s:VxMan_AddTextDisplay('manbuffer', 'manuals#display#OpenManualsBuffer', 'bl')

  call s:VxMan_AddListDisplay('choice', 'manuals#display#InputList', 'l')
  call s:VxMan_AddGrepDisplay('choice', 'manuals#display#InputList', 'l')
  call s:VxMan_AddGrepDisplay('qfixlist', 'manuals#display#QuickFixList', 'q')

  "call s:AddGrepDisplay('qfixlist', 'manuals#display#QFixList', 'qo')

  if s:PluginExists('vimuiex#vxlist', 'autoload/vimuiex/vxlist.vim')
   call s:VxMan_AddMenuDisplay('vimuiex', 'manuals#display#OpenVxMenu')

   call s:VxMan_AddTextDisplay('vimuiex', 'manuals#display#OpenVxText', 'lb')

   call s:VxMan_AddListDisplay('vimuiex', 'manuals#display#OpenVxList', 'l')
   call s:VxMan_AddGrepDisplay('vimuiex', 'manuals#display#OpenVxList', 'l')
  endif

  if s:PluginExists('tlib', 'plugin/02tlib.vim')
   call s:VxMan_AddListDisplay('tlib', 'manuals#display#OpenTlibList', 'bl')
   call s:VxMan_AddGrepDisplay('tlib', 'manuals#display#OpenTlibList', 'bl')
  endif

  call s:SetLoaded(s:curplugin, 1)
 catch /.*/
  call s:Exception(v:throwpoint, v:exception, s:curplugin, -9)
 endtry
endif
" END Plugin

" ================================
" Source: manuals/search.vim
" START Plugin
let s:curplugin='manuals_search'
if s:ContinueLoading(s:curplugin)
 try        
  if !exists("g:vxlib_manuals_directory")
   let rtp0 = split(&rtp, ',')[0]
   let g:vxlib_manuals_directory = expand(rtp0 . "/manuals")
  endif

  call s:VxMan_AddGetter(['vimhelp', 'tkg', 'manuals#search#VimHelp', 'Get Vim Help.'])
  call s:VxMan_AddGetter(['extvimhelp>vimhelp', 'tkg', 'manuals#search#ExternVimHelp', 'Get Help in Vim Format.'])
  call s:VxMan_AddGetter(['_choosevimhelp>vimhelp', 'tkg', 'manuals#search#ChooseVimHelp', 'Get Help in Vim Format.'])
  call s:VxMan_AddGetter(['pydoc', 'tg', 'manuals#search#Pydoc', 'Get help for current word using pydoc.'])
  call s:VxMan_AddGetter(['man', 't', 'manuals#search#Man', 'Get a man entry for current word.'])
  call s:VxMan_AddGetter(['dict', 't', 'manuals#search#Dict', 'Get a dictionary entry for current word.'])

  call s:VxMan_AddContexts(['vim'], ['vimhelp'])
  call s:VxMan_AddContexts(['help'], ['_choosevimhelp'])
  call s:VxMan_AddContexts(['python'], ['pydoc'])
  call s:VxMan_AddContexts(['sh'], ['man'])
  call s:VxMan_AddContexts(['*/*comment', '*/*string', 'text', 'tex', '*'], ['dict'])

  if exists('g:pydiction_location') && filereadable(g:pydiction_location)
     \ || filereadable(g:vxlib_manuals_directory . "/pydiction/complete-dict")
   " pydiction(850)
   call s:VxMan_AddGetter(['pydiction', 'k', 'manuals#search#Pydiction',
      \ 'Get a list of symbols using pydiction complete-dict.'])
   call s:VxMan_AddContexts(['python'], ['pydiction'])
  endif

  if filereadable(g:vxlib_manuals_directory . '/cmakeref/cmakecmds.txt')
   " cmakeref(3045)
   let s:hdir = g:vxlib_manuals_directory . '/cmakeref'
   call s:VxMan_AddGetter(['cmakeref>extvimhelp', 'tkg', 'manuals#search#ExternVimHelp',
      \ 'Get help for CMake.',
      \ { 'helpdirs': s:hdir, 'helpext': '.txt' }
      \ ]) " XXX { helpext: } unused, defaults to .txt
   call s:VxMan_AddContexts(['cmake'], ['cmakeref'])
   unlet s:hdir
  endif

  if filereadable(g:vxlib_manuals_directory . '/cssref/css21.txt')
   " css21(918)
   let s:hdir = g:vxlib_manuals_directory . '/cssref'
   call s:VxMan_AddGetter(['cssref>extvimhelp', 'tkg', 'manuals#search#ExternVimHelp',
      \ 'Get help for CSS.',
      \ { 'helpdirs': s:hdir }
      \ ])
   call s:VxMan_AddContexts(['css', 'html*/css*', 'xhtml/*.css'], ['cssref'])
   unlet s:hdir
  endif

  if filereadable(g:vxlib_manuals_directory . '/crefvim/crefvim.txt')
   " crefvim(614)
   " TODO: stlref(2353) can be put in the same dir
   let s:hdir = g:vxlib_manuals_directory . '/crefvim'
   call s:VxMan_AddGetter(['crefvim>extvimhelp', 'tkg', 'manuals#search#ExternVimHelp',
      \ 'Get help for C.',
      \ { 'helpdirs': s:hdir }
      \ ])
   call s:VxMan_AddContexts(['c', 'cpp'], ['crefvim'])
   unlet s:hdir
  endif

  if filereadable(g:vxlib_manuals_directory . '/luarefvim/lua50refvim.txt')
     \ || filereadable(g:vxlib_manuals_directory . '/luarefvim/lua51refvim.txt')
   " luarefvim(1291)
   let s:hdir = g:vxlib_manuals_directory . '/luarefvim'
   call s:VxMan_AddGetter(['luarefvim>extvimhelp', 'tkg', 'manuals#search#ExternVimHelp',
      \ 'Get help for Lua.',
      \ { 'helpdirs': s:hdir }
      \ ])
   call s:VxMan_AddContexts(['lua'], ['luarefvim'])
   unlet s:hdir
  endif

  call s:SetLoaded(s:curplugin, 1)
 catch /.*/
  call s:Exception(v:throwpoint, v:exception, s:curplugin, -9)
 endtry
endif
" END Plugin

" ================================
for err in s:exception_list
 echoerr err
endfor
let s:exception_list = []
