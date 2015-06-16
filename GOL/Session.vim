let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 test_game_of_life.ads
badd +1 test_game_of_life.adb
badd +6 game_of_life.ads
badd +1 game_of_life.adb
badd +1 test_games_of_life.adb
badd +1 abstract_cell_state.abs
badd +1 alive_cell_state.adb
badd +1 dead_cell_state.ads
badd +1 dead_cell_state.adb
badd +1 alive_cell_state.ads
badd +1 states/abstract_cell_state.abs
badd +1 states/alive_cell_state.ads
badd +1 states/alive_cell_state.adb
badd +1 states/dead_cell_state.ads
badd +1 states/dead_cell_state.adb
badd +5 states/abstract_cell_state.ads
badd +1 states/abstract_cell_state.adb
badd +1 states/abstract_cell_states.adb
badd +1 states/abstract_cell_states.ads
badd +1 states/alive_cell_states.adb
badd +1 states/alive_cell_states.ads
badd +1 states/dead_cell_states.adb
badd +1 states/dead_cell_states.ads
badd +1 games_of_life.ads
badd +1 games_of_life.adb
badd +1 minimalCode.ads
badd +1 minimalCode.adb
badd +9 world_visitor.adb
badd +5 world_visitor.ads
badd +1 visitors/world_visitor.adb
badd +1 visitors/world_visitor.ads
badd +3 visitors/world_visitors.adb
badd +1 visitors/world_visitors.ads
badd +1 Step_Visitor.ads
badd +1 visitors/step_visitors.ads
badd +1 visitors/step_visitors.adb
badd +10 states/Switch_State_Actions.ads
badd +21 states/Switch_State_Actions.adb
badd +1 states/switch_state_actions.ads
badd +1 states/switch_state_actions.adb
argglobal
silent! argdel *
argadd ~/Programmation/Ada/learning/GOL/test_game_of_life.ads
argadd ~/Programmation/Ada/learning/GOL/test_game_of_life.adb
set stal=2
edit test_games_of_life.adb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
2argu
edit test_games_of_life.adb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 019|
lcd ~/Programmation/Ada/learning/GOL
tabedit ~/Programmation/Ada/learning/GOL/games_of_life.ads
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
argglobal
1argu
edit ~/Programmation/Ada/learning/GOL/games_of_life.ads
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 056|
lcd ~/Programmation/Ada/learning/GOL
wincmd w
argglobal
1argu
edit ~/Programmation/Ada/learning/GOL/games_of_life.adb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 025|
lcd ~/Programmation/Ada/learning/GOL
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/Programmation/Ada/learning/GOL/states/abstract_cell_states.ads
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
argglobal
edit ~/Programmation/Ada/learning/GOL/states/abstract_cell_states.ads
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/Programmation/Ada/learning/GOL
wincmd w
argglobal
edit ~/Programmation/Ada/learning/GOL/states/abstract_cell_states.adb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/Programmation/Ada/learning/GOL
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/Programmation/Ada/learning/GOL/states/alive_cell_states.ads
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
argglobal
edit ~/Programmation/Ada/learning/GOL/states/alive_cell_states.ads
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Programmation/Ada/learning/GOL
wincmd w
argglobal
edit ~/Programmation/Ada/learning/GOL/states/alive_cell_states.adb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/Programmation/Ada/learning/GOL
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/Programmation/Ada/learning/GOL/states/dead_cell_states.ads
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
argglobal
edit ~/Programmation/Ada/learning/GOL/states/dead_cell_states.ads
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 019|
lcd ~/Programmation/Ada/learning/GOL
wincmd w
argglobal
edit ~/Programmation/Ada/learning/GOL/states/dead_cell_states.adb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/Programmation/Ada/learning/GOL
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/Programmation/Ada/learning/GOL/states/switch_state_actions.ads
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
argglobal
edit ~/Programmation/Ada/learning/GOL/states/switch_state_actions.ads
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Programmation/Ada/learning/GOL
wincmd w
argglobal
edit ~/Programmation/Ada/learning/GOL/states/switch_state_actions.adb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Programmation/Ada/learning/GOL
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/Programmation/Ada/learning/GOL/visitors/step_visitors.ads
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 28 + 29) / 59)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 27 + 29) / 59)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
argglobal
edit ~/Programmation/Ada/learning/GOL/visitors/step_visitors.ads
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 032|
lcd ~/Programmation/Ada/learning/GOL
wincmd w
argglobal
edit ~/Programmation/Ada/learning/GOL/visitors/world_visitors.ads
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 07|
lcd ~/Programmation/Ada/learning/GOL
wincmd w
argglobal
edit ~/Programmation/Ada/learning/GOL/visitors/step_visitors.adb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((17 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 053|
lcd ~/Programmation/Ada/learning/GOL
wincmd w
exe '1resize ' . ((&lines * 28 + 29) / 59)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 27 + 29) / 59)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
tabnext 6
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
