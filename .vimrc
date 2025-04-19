" python 环境变量
set pythonthreedll=libpython3.6m.so.1.0
if has('python3')
   endif 
" colorscheme :desert leo  desertEx
" colorscheme :desertEx
colorscheme desert
autocmd BufNewFile,BufRead *.sv set omnifunc=verilog_systemverilog#Complete
autocmd BufNewFile,BufRead *.v set omnifunc=verilog_systemverilog#Complete

"text config 
set guifont=courier\ 10\ pitch\ 15.5 "Font type and size
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936,big－5         
set enc=utf-8
set textwidth=0
set modifiable
set confirm "confirm for the readonly/unsaved files when exit
set number "line number
set nocompatible
set nobackup "No automatic backup files
set cuc "高亮行号列号
set cul
set backspace=indent,eol,start
" vim使用自动对起，也就是把当前行的对起格式应用到下一行
set autoindent
" 依据上面的对起格式，智能的选择对起方式，对于类似C语言编写上很有用
set smartindent
" 在状态列显示目前所执行的指令
set showcmd
"增加显示命令行的宽度和底部状态栏的宽度
set cmdheight=2
set laststatus=2
set scrolloff=3 "设置光标在离屏幕边缘 3 行内时开始滚动。
set nobackup "禁止自动备份文件
"显示buffer的短路径
set shortname
"设置窗口大小
winpos 700 235
"设置显示40行 108列
set lines=40 columns=108

"indent
"filetype, 'indent on' is necessary for smartindent
filetype on
filetype plugin on
filetype indent on

"syntax
" syntax on "syntax highlight
syntax enable "syntax highlight
set showmatch "syntax match
set matchtime=2

"TAB key option
set smarttab
set tabstop=4
set softtabstop=4 "available for backspace退格键一次删除4个空格
set shiftwidth=4 
set expandtab "to expand all TABs as SPACEs
%retab! "replace exisiting TABs with SPACEs
"设置文件类型为make时，不启用tab转换为空格，因为makefile文件需要tab作为缩进而不是空格
autocmd FileType make set noexpandtab

"command config
set cmdheight=2
set laststatus=2

"搜索匹配高亮 增量搜索 不区分大小写
set hlsearch
set incsearch 
set ignorecase

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

"the edge off the buffer
set scrolloff=3

"enable the backspace deletion space up to 2 lines
set backspace=2












"function 
"ignore the full path of tags
function ShortTabLabel ()
    let bufnrlist = tabpagebuflist (v:lnum)
    let label = bufname (bufnrlist[tabpagewinnr (v:lnum) -1])
    let filename = fnamemodify (label, ':t')
    return filename
endfunction
set guitablabel=%{ShortTabLabel()}

"Self-defined function Cnt_match to count and show the matched search_wd
function Cnt_match(search_wd)
   let cnt = 0 
   let i = 1 
   let cur_line = line(".")
   normal G
   let last_lie = line(".")
   echo "Searching ... " a:search_wd
   normal gg
   while search(a:search_wd,"W") > 0 
      echo "Yes ... Line".line(".")."  >::>::>".getline(".")
      let cnt = cnt + 1
   endwhile
   echo "Match Counter : ". cnt
   execute cur_line
endfunction

"Self-defined function Clum_i to insert number to signal list
"This is helpful to name huge signal list with number
function Clum_i(start,end,span)
   let cnt = a:start
   let line_num = line(".")
   let clum_num = col(".")

   while cnt <= a:end
      execute "normal i".cnt."\<ESC>"
      let line_num = line_num + a:span + 1 
      call cursor(line_num,clum_num)
      let cnt = cnt + 1
   endwhile
endfunction;

"endfunction


"hotkey
" 设置自定义快捷键的前缀为默认的\
let mapleader = "\\"
"====restore your cursor position in a file over several editing sessions
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
autocmd BufReadPost * silent! :%foldopen!
" use % find pattern
let b:match_words = '\<function\>:\<endfunction\>,'
					\ . '\<task\>:\<endtask\>,'
					\ . '\<module\>:\<endmodule\>,'
					\ . '\<begin\>:\<end\>,'
					\ . '\<case\>:\<endcase\>,'
					\ . '\<class\>:\<endclass\>,'
					\ . '\<for\>:\<endfor\>,'
					\ . '\<while\>:\<endwhile\>,'
					\ . '\<specify\>:\<endspecify\>,'
					\ . '\<generate\>:\<endgenerate\>,'
					\ . '\<\(ifdef\|ifndef\)\>:\<\(else\|elsif\)\>:\<endif\>,'
                    \ . '`\<\(ifdef\|ifndef\)\>:`\<\(else\|elsif\)\>:`\<endif\>'
runtime macros/matchit.vim 


set foldmethod=indent
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
set foldlevelstart=99

"mengrou setting
source ~/.vim/myinitvim/_01_general_setting.vim
" set vundle
source ~/.vim/myinitvim/_02_vundle_setting.vim
" comment
map <C-q> \c<Space>
"search
"复制选中区域，并在查找栏输入该区域内容，用于搜索相似内容
vnoremap * y/<C-R>=escape(@", '\/.$^~[]')<CR><CR> 
"复制选中区域，并在查找栏输入该区域内容并在末尾加上 "?"，用于反向搜索相似内容
vnoremap # y?<C-R>=escape(@", '\/.$^~[]')<CR><CR> 
"Grep hot key
nnoremap <silent><F3> :Grep<CR>


"Windows control
nmap wn <C-w>n
nmap wv <C-w>v
nmap wc <C-w>c 
nmap ws <C-w>s


" edit setting
" ctrl+c +x +v enable
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
" alt + A  all select
noremap <A-a> ggVG
"ctrl+s save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>
" Shift tab :indent verse 
nnoremap <C-,> <<
nnoremap <C-.>  >>
inoremap <C-,> <C-d>
vnoremap <C-.> >
vnoremap <C-,> <


"add change time
imap <F3> <C-R>=strftime("%Y_%m_%d-%H:%M")<CR>
" F10 run current file in command
nnoremap <F10> :!%:p<CR>

" command expand path. command mode. :%%/ expand
cabbr <expr> %% expand('%:p:h') 


"buffer 
"tag view control
"切换到前一个标签页
map <S-Left> :tabp<CR>   
"切换到下一个标签页
map <S-Right> :tabn<CR>
" enable hidden buffer with changed
set hidden
" normal 模式下使用 bl 列出 Buffer 列表
nnoremap <silent> bl :ls<CR>
" normal 模式下使用 bo 打开一个新 Buffer
nnoremap <silent> bo :enew<CR>
" normal 模式下使用 bn 切换到下一个 Buffer
nnoremap <silent> bn :bnext<CR>
" normal 模式下使用 bn 切换到上一个 Buffer
nnoremap <silent> bp :bprevious<CR>
" normal 模式下使用 bd 关闭当前 Buffer
nnoremap <silent> bd :bdelete<CR>
nnoremap <leader>bd :w <bar> %bd <bar> e# <bar> bd# <CR>
" reload file
nnoremap <F8> :e<CR>
nnoremap <c-F8> :bufdo e <CR>


"03 treeExplorer plugin
let g:treeExplVertical=1
let g:treeExplDirSort=1
let g:treeExplWinSize=30
"nmap vt :VSTreeExplore<cr>
nmap vt :call ToggleVExplorer()<cr>
map <silent> <A-x> :call ToggleVExplorer()<CR>
map <silent> <C-E> :call ToggleTExplorer()<CR>
" Default to tree mode
let g:netrw_liststyle = 3 
nmap <F12> :NERDTreeToggle<CR>

" under this same with _02_vundle_setting ...
" 04 ale plugin
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" 05 ale plugin 
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" 06 neocomplcache
" Plugin key-mappings.
inoremap <expr><C-l>     neocomplcache#complete_common_string()
inoremap <expr><C-g>     neocomplcache#undo_completion()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

"other plugin 
" easyalign plugin 
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ultisnips plugin 
let g:UltiSnipsExpandTrigger="<c-w>"
"  forward and backward in the hint
let g:UltiSnipsJumpForwardTrigger="<c-w>"
let g:UltiSnipsJumpBackwardTrigger="<s-w>"

source ~/.vim/myinitvim/_03_verilog_color_setting.vim
" autocmd BufNewFile,BufRead *.sv set filetype=verilog_systemverilog
" set filetype=verilog_systemverilog

" autocmd BufNewFile,BufRead *.sv set tags=~/_00_myuse/_01_uvm_code/uvm-1.2/tags_uvm
set tags=./tags;,tags
set tags+=~/_00_myuse/_01_uvm_code/uvm-1.2/src/tags;
let Tlist_Ctags_cmd='~/_00_myuse/_02_bin/_01_uctags/install_path/bin/ctags'
nmap <F10> :TagbarToggle<CR>
let g:tagbar_ctags_bin ='~/_00_myuse/_02_bin/_01_uctags/install_path/bin/ctags'
let g:tagbar_type_verilog_systemverilog = {
        \ 'ctagstype'   : 'SystemVerilog',
        \ 'kinds'       : [
            \ 'b:blocks:1:1',
            \ 'c:constants:1:0',
            \ 'e:events:1:0',
            \ 'f:functions:1:1',
            \ 'm:modules:0:1',
            \ 'n:nets:1:0',
            \ 'p:ports:1:0',
            \ 'r:registers:1:0',
            \ 't:tasks:1:1',
            \ 'A:assertions:1:1',
            \ 'C:classes:0:1',
            \ 'V:covergroups:0:1',
            \ 'I:interfaces:0:1',
            \ 'M:modport:0:1',
            \ 'K:packages:0:1',
            \ 'P:programs:0:1',
            \ 'R:properties:0:1',
            \ 'T:typedefs:0:1'
        \ ],
        \ 'sro'         : '.',
        \ 'kind2scope'  : {
            \ 'm' : 'module',
            \ 'b' : 'block',
            \ 't' : 'task',
            \ 'f' : 'function',
            \ 'C' : 'class',
            \ 'V' : 'covergroup',
            \ 'I' : 'interface',
            \ 'K' : 'package',
            \ 'P' : 'program',
            \ 'R' : 'property'
        \ },
    \ }
