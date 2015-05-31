" Colorscheme created with ColorSchemeEditor v1.2.3
"Name: PerfectDark
"Maintainer: 
"Last Change: 2015  2月 19
set background=dark
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "PerfectDark"

if v:version >= 700
	highlight CursorColumn guibg=grey40 gui=NONE
	highlight CursorLine guibg=#3d3d3d gui=NONE
	highlight Pmenu guibg=#000d52 gui=NONE
	highlight PmenuSel guibg=#0040b7 gui=NONE
	highlight PmenuSbar guibg=grey gui=NONE
	highlight PmenuThumb guibg=white gui=NONE
	highlight TabLine guibg=darkgrey gui=underline
	highlight TabLineFill gui=reverse
	highlight TabLineSel gui=bold
	if has('spell')
		highlight SpellBad gui=undercurl
		highlight SpellCap gui=undercurl
		highlight SpellLocal gui=undercurl
		highlight SpellRare gui=undercurl
	endif
endif
highlight Cursor guifg=bg guibg=#aaaaaa gui=NONE
highlight CursorIM gui=NONE
highlight DiffAdd guibg=darkblue gui=NONE
highlight DiffChange guibg=#3D0257 gui=NONE
highlight DiffDelete guifg=blue guibg=darkcyan gui=bold
highlight DiffText guibg=#430006 gui=bold
highlight Directory guifg=#35d244 gui=NONE
highlight ErrorMsg guifg=white guibg=red gui=NONE
highlight FoldColumn guifg=cyan guibg=grey gui=NONE
highlight Folded guifg=#111111 guibg=#8090a0 gui=NONE
highlight IncSearch guifg=slategrey guibg=khaki gui=reverse
highlight LineNr guifg=#999999 guibg=#191414 gui=NONE
highlight MatchParen guibg=darkcyan gui=NONE
highlight ModeMsg gui=bold
highlight MoreMsg guifg=seagreen gui=bold
highlight NonText guifg=#444444 guibg=#222222 gui=bold
highlight Normal guifg=#ececec guibg=#222222 gui=NONE
highlight Question guifg=green gui=bold
highlight Search guifg=wheat guibg=#633509 gui=underline
highlight SignColumn guifg=cyan guibg=#000000 gui=NONE
highlight SpecialKey guifg=cyan gui=NONE
highlight StatusLine guifg=white guibg=#8090a0 gui=bold
highlight StatusLineNC guifg=#506070 guibg=#a0b0c0 gui=reverse
highlight Title guifg=#ffffff gui=bold
highlight VertSplit guifg=#000735 guibg=#152269 gui=reverse
highlight Visual guibg=#5c5c5c gui=NONE
highlight VisualNOS gui=bold,underline
highlight WarningMsg guifg=red gui=NONE
highlight WildMenu guifg=black guibg=yellow gui=NONE
highlight link Boolean Constant
highlight link Character Constant
highlight Comment guifg=#999999 gui=NONE
highlight link Conditional Statement
highlight Constant guifg=#ed9d13 gui=NONE
highlight link Debug Special
highlight Define guifg=#cd23cd gui=NONE
highlight link Delimiter Special
highlight Error guifg=white guibg=red gui=NONE
highlight link Exception Statement
highlight link Float Number
highlight Function guifg=#447fcf gui=NONE
highlight Identifier guifg=#40ffff gui=NONE
highlight Ignore guifg=bg gui=NONE
highlight link Include PreProc
highlight link cPreProc PreProc
highlight cPreProc guifg=#ca121a gui=BOLD
highlight link Keyword Statement
highlight link Label Statement
highlight Macro guifg=#ae2fae gui=bold
highlight Number guifg=#647eff gui=NONE
highlight link Operator Statement
highlight PreCondit guifg=#ac8dc6 gui=bold
highlight PreProc guifg=#ae2fae gui=bold
highlight link Repeat Statement
highlight Special guifg=orange gui=NONE
highlight link SpecialChar Special
highlight link SpecialComment Special
highlight Statement guifg=#729fcf gui=bold
highlight link StorageClass Type
highlight link cType Type
highlight cType guifg=#27b684 gui=BOLD
highlight link cTypeTag cType
highlight cTypeTag guifg=#27b684 gui=NONE
highlight String guifg=#ed9d13 gui=NONE
highlight link Structure Type
highlight link Tag Special
highlight Todo guifg=#e50808 guibg=#520000 gui=bold
highlight Type guifg=#6ab825 gui=bold
highlight Typedef guifg=#27b684 gui=bold
highlight Underlined guifg=#80a0ff gui=underline


"ColorScheme metadata{{{
if v:version >= 700
	let g:PerfectDark_Metadata = {
				\"Palette" : "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90",
				\"Last Change" : "2015  2月 19",
				\"Name" : "PerfectDark",
				\}
endif
"}}}
" vim:set foldmethod=marker expandtab filetype=vim:
