" Vim color file
"
" Maintainer:   Nikita Nikitov <nikita.nikitov@gmail.com>
" Last Change:  16 September 2014


set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="CodeBloxWhite"


"Syntax Groups =============================================

hi comment      guibg=#ffffff   guifg=#339900   gui=none

hi constant     guibg=#ffffff   guifg=#9900CC   gui=none

hi identifier   guibg=#ffffff   guifg=#000099   gui=none

hi statement    guibg=#ffffff   guifg=#2222ff   gui=none

hi preproc      guibg=#ffffff   guifg=#2222ff   gui=none
hi precondit    guibg=#ffffff   guifg=#cc00cc   gui=bold

hi type         guibg=#ffffff   guifg=#003399   gui=bold

hi special      guibg=#ffffff   guifg=#cc00cc   gui=none
hi specialchar  guibg=#ffffff   guifg=#cc2222   gui=underline

hi underlined   guibg=#ffffff   guifg=#2222ff   gui=underline

hi error        guibg=#ff2222   guifg=#ffffff   gui=none
hi Identifier   guibg=#ffffff   guifg=#2222ff   gui=none

hi todo         guibg=#339933   guifg=#ffffff   gui=none


" syntax highlighting
"hi Comment    cterm=NONE ctermfg=DarkRed     gui=NONE guifg=red2
"hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3
"hi Identifier cterm=NONE ctermfg=DarkCyan    gui=NONE guifg=cyan4
"hi PreProc    cterm=NONE ctermfg=DarkMagenta gui=NONE guifg=magenta3
"hi Special    cterm=NONE ctermfg=LightRed    gui=NONE guifg=deeppink
"hi Statement  cterm=bold ctermfg=Blue	     gui=bold guifg=blue
"hi Type	      cterm=NONE ctermfg=Blue	     gui=bold guifg=blue






"General Groups ============================================

hi cursor       guibg=#000000   guifg=#ffffff   gui=none
"  cursorim?
hi cursorcolumn guibg=#eeeeee                   gui=none
hi cursorline   guibg=#eeeeee                   gui=none

hi directory    guibg=#ffffff   guifg=#2222ff   gui=none
"}}}

" Diff "{{{
" TODO: Tune diff colors.
hi diffAdd      guifg=fg           guibg=#80a080 gui=none
hi diffDelete   guifg=fg           guibg=bg      gui=none
hi diffChange   guifg=#990000      guibg=#FFFFDB gui=none
hi diffText     guifg=#FF0000      guibg=#ffff99 gui=none
"}}}
"hi diffadd      guibg=#66ff66   guifg=#000000   gui=none
"hi diffchange   guibg=#ffff00   guifg=#FFFF99   gui=none
"hi diffdelete   guibg=#ff6666   guifg=#ff6666   gui=none
"hi difftext     guibg=#ffff00   guifg=#000000   gui=none

hi errormsg     guibg=#ff2222   guifg=#ffffff   gui=none

hi vertsplit    guibg=#2222ff   guifg=#2222ff   gui=none

hi folded       guibg=#eeeeee   guifg=#2222ff   gui=none
hi foldcolumn   guibg=#eeeeee   guifg=#999999   gui=none

"  signcolumn?

hi incsearch    guibg=#ffbb00   guifg=#000000   gui=none

hi linenr       guibg=#ffffff   guifg=#cccccc   gui=none

hi matchparen   guibg=#cccccc                   gui=none

hi modemsg      guibg=#ffffff   guifg=#999999   gui=none

hi moremsg      guibg=#339900   guifg=#ffffff   gui=none

hi nontext      guibg=#ffffff   guifg=#999999   gui=none

hi normal       guibg=#ffffff   guifg=#222222   gui=none

hi pmenu        guibg=#cccccc   guifg=#222222   gui=none
hi pmenusel     guibg=#2222ff   guifg=#ffffff   gui=none
"  pmenusbar?
"  pmenuthumb?

hi question     guibg=#339900   guifg=#ffffff   gui=none

hi search       guibg=#ffff00   guifg=#000000   gui=none

hi specialkey   guibg=#ffffff   guifg=#D9D9D9   gui=none

hi spellbad                                     gui=undercurl guisp=#ff2222
hi spellcap                                     gui=undercurl guisp=#ff2222
hi spelllocal                                   gui=undercurl guisp=#cc2222
hi spellrare                                    gui=undercurl guisp=#22cc22

hi statusline   guibg=#2222ff   guifg=#ffffff   gui=none
hi statuslinenc guibg=#2222ff   guifg=#999999   gui=none

hi tabline      guibg=#cccccc   guifg=#222222   gui=none
hi tablinesel   guibg=#2222ff   guifg=#ffffff   gui=none
hi tablinefill  guibg=#aaaaaa   guifg=#aaaaaa   gui=none

hi title        guibg=#ffffff   guifg=#6666ff   gui=none

hi visual       guibg=#cccccc   guifg=#333333   gui=none
"  visualnos?

hi warningmsg   guibg=#ffffff   guifg=#ff0000   gui=none

hi wildmenu     guibg=#339900   guifg=#ffffff   gui=none



hi link Function   Identifier

