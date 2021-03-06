" Copyright (C) 2010-2012 Hong Xu

" This file is part of SingleCompile.

" SingleCompile is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.

" SingleCompile is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.

" You should have received a copy of the GNU General Public License
" along with SingleCompile.  If not, see <http://www.gnu.org/licenses/>.

" check doc/SingleCompile.txt for more information

function! SingleCompile#templates#javascript#Initialize()
    call SingleCompile#SetCompilerTemplate('javascript', 'gjs',
                \'Javascript Bindings for GNOME', 'gjs', '', '')
    call SingleCompile#SetPriority('javascript', 'gjs', 120)
    call SingleCompile#SetCompilerTemplate('javascript', 'js',
                \'SpiderMonkey, a JavaScript engine written in C',
                \'js', '', '')
    call SingleCompile#SetCompilerTemplate('javascript', 'node.js',
                \'node.js', 'node', '', '')
    call SingleCompile#SetCompilerTemplate('javascript', 'rhino',
                \'Rhino, a JavaScript engine written in Java',
                \'rhino', '', '')
endfunction

"vim703: cc=78
"vim: et ts=4 tw=78 sw=4
