" airline
" open tab bar
let g:airline#extensions#tabline#enabled=1 
" set theme
" let g:airline_theme='simple'
let g:airline_theme='molokai'
" let g:airline_theme='random'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" 显示 buffer 编号，方便切换
let g:airline#extensions#tabline#buffer_nr_show=1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
"这个是安装字体后 必须设置此项" 

let g:airline_powerline_fonts = 1 
"---------------alrLine Config--------------
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
 endif
 " powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

" ---- MiniBufExplorer: 多行 buffer 列表 ----
" 标签放不下时按窗口宽度物理折成多行
let g:miniBufExplTabWrap     = 1
" buffer 列表窗口最多/最少占几行
let g:miniBufExplMaxSize     = 4
let g:miniBufExplMinSize     = 1
" 贴边显示（固定在顶部）
let g:miniBufExplSplitToEdge = 1
" 光标在 NERDTree / MiniBufExplorer 等插件窗口时 \1~\9 不响应，避免 :b 冲掉插件窗口
let g:airline#extensions#tabline#keymap_ignored_filetypes =
    \ ['vimfiler', 'nerdtree', 'minibufexpl']

