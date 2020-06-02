let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Development/Sites/nikki_v3
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Development/Sites/nikki_v3
badd +239 ~/Development/Sites/nikki_V2/scss/style.scss
badd +97 index.html
badd +35 scss/style.scss
badd +0 term://.//15464:/bin/zsh
badd +41 ~/Development/Sites/front_end_crash_course/index.html
badd +40 ~/Development/Sites/nikki_V2/index.html
badd +31 ~/Development/Sites/front_end_crash_course/scss/style.scss
argglobal
%argdel
$argadd ~/Development/Sites/nikki_v3
set stal=2
edit ~/Development/Sites/nikki_V2/index.html
set splitbelow splitright
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 40 - ((7 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 07|
lcd ~/Development/Sites/nikki_v3
tabedit ~/Development/Sites/nikki_v3/scss/style.scss
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 39 + 25) / 50)
exe 'vert 1resize ' . ((&columns * 55 + 57) / 114)
exe '2resize ' . ((&lines * 39 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 58 + 57) / 114)
exe '3resize ' . ((&lines * 6 + 25) / 50)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 37 - ((36 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 03|
lcd ~/Development/Sites/nikki_v3
wincmd w
argglobal
if bufexists("~/Development/Sites/nikki_v3/index.html") | buffer ~/Development/Sites/nikki_v3/index.html | else | edit ~/Development/Sites/nikki_v3/index.html | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 37 - ((36 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 03|
lcd ~/Development/Sites/nikki_v3
wincmd w
argglobal
if bufexists("term://.//15464:/bin/zsh") | buffer term://.//15464:/bin/zsh | else | edit term://.//15464:/bin/zsh | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 259 - ((5 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
259
normal! 0
lcd ~/Development/Sites/nikki_v3
wincmd w
exe '1resize ' . ((&lines * 39 + 25) / 50)
exe 'vert 1resize ' . ((&columns * 55 + 57) / 114)
exe '2resize ' . ((&lines * 39 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 58 + 57) / 114)
exe '3resize ' . ((&lines * 6 + 25) / 50)
tabnext 2
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=atI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
