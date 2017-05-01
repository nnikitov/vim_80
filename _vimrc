"-------------------------------ORG--------------------------------
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
"-------------pathogen: load plugins from bundle folder------------
"call pathogen#infect()
execute pathogen#infect()
execute pathogen#helptags()
call pathogen#infect()
"-------------pathogen: load plugins from bundle folder------------
behave mswin
"set diffexpr=MyDiff()a my coment
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"-------------------------------ORG--------------------------------
"-------------------------   language encoding  -------------------
"set enc=cp1251 "default
set enc=utf-8
"------------------------  language encoding   -------------------
"------------------------- start directory ------------------------
"------------------------- start directory ------------------------
"-------------------------backup files fix-------------------------
set backup
set backupdir=C:\WINDOWS\Temp
set backupskip=C:\WINDOWS\Temp\*
set directory=C:\WINDOWS\Temp
set writebackup
"-------------------------backup files fix-------------------------
"---set ic ignorecase ..... for case sensitive put /set noic/------
nmap <F9> :set ignorecase! ignorecase?
"---set ic ignorecase ..... for case sensitive put /set noic/------
"-------------------------theme /colors----------------------------
"find your font:
"1:   :set guifont=*
"2:   :set guifont?
"---------------
syntax on
set showcmd
set number
:set guifont=Lucida_Console:h10:cRUSSIAN
"set guifont=Consolas:h9:cANSI
"set guifont=Courier_New:h10:cANSI
"set guifont=Courier:h10:cDEFAULT
"colorscheme manuscript -no
"colorscheme CodeBloxWhite
colorscheme vylight
"-------------------------theme /colors----------------------------
"
"
"=================================================================
"vim start size
"------------------------------------------------------------------
"
set lines=999 columns=999

"-------------NERDTree: tree structure files-----------------------
"open a NERDTree automatically when vim starts up
if &diff
else
  autocmd vimenter * NERDTree
endif
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <C-n>  :NERDTreeToggle<CR>
"-------------NERDTree: tree structure files-----------------------
"------------------open _vimrc with \".v"--------------------------
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
"------------------open _vimrc with \".v"--------------------------
" ----------------------------  DIFF  -----------------------------
"------------------mapping F6, F7 and F8 for vimDiff---------------
nmap <F8> ]c
nmap <F7> [c
map <F6> :diffget <CR>
map <F5> :diffupdate <CR>
nmap <C-d> :diffthis <CR>
 "------------------mapping F6, F7 and F8 for vimDiff---------------
 "----------------------------- DirDiff ----------------------------
 let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,*.o"
 "-------------------------  endDirDiff ----------------------------
 "---------------------------  endDIFF  ----------------------------
 "----------------mapping tab's and white spaces--------------------
 " whitespaces tabs
 set tabstop=4
 set listchars=tab:>-,trail:-
 set list
 " spaces
 "set list listchars=tab:\|\
 highlight Whitespace cterm=underline gui=underline ctermbg=NONE guibg=NONE ctermfg=red guifg=#D9D9D9
 autocmd ColorScheme * highlight Whitespace gui=underline ctermbg=NONE guibg=NONE ctermfg=red guifg=red
 match Whitespace /  \+/
 "
 "----------chenge tabs ot whitespaces------------------------------
 :set tabstop=4 shiftwidth=4 expandtab
"----------chenge tabs ot whitespaces------------------------------
"----------------mapping tab's and white spaces--------------------
"--------------- snipmate + unimpaired-----------------------------
filetype plugin on
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
"--------------- snipmate + unimpaired-----------------------------

"--------" Visually select the text that was last edited/pasted----
nmap gV `[v`]
"--------" Visually select the text that was last edited/pasted----
"---------------------ctags and exuberant--------------------------
"let Tlist_Ctags_Cmd = C:/Program\ Files\ (x86)/Vim/vim80/bundle/ctags58/
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"---------------------ctags and exuberant--------------------------
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

"INFO PART
"*****************************************************************************
"set runtimepath+=~/vimfiles,C:/Program\ Files/Vim/Vim74/bundle/snipmate,C:/Program\ Files/Vim/Vim74/bundle/snipmate/after/plugin
"-----------------------------------------------------------------
" => Misc
"-----------------------------------------------------------------
" Remove the Windows ^M - when the encodings gets messed up
":%s/
"
"
"" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

set list listchars=trail:.,extends:>
autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>

"====================================================
" changing tabs
" ===================================================
"
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
"nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>
"
"
"====================================================
nnoremap w2l  :%s/\\/\//g<CR>
nnoremap l2w  :%s/\//\\/g<CR>
nnoremap t2s  :%s/	/    /g<CR>
"====================================================
"compiler
"----------------------------------------------------
"" Automatically open, but do not go to (if there are errors) the quickfix /
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
"
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
"========================================================
"""""============================Test++++++++++
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


"will give a menu tab browsing above the command line.
set wildmenu
