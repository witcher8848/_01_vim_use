"ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
"let g:ale_linters = {'verilog':['iverilog']}
"let g:ale_linters = {'perl':['perl-critic']}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_linters_explicit = 1

let g:ale_linters = {
\'python'     : ['pylint'],
\'c'          : ['clang'],
\'perl'       : ['perl'],
\'verilog'    : ['iverilog'],
\'PowerShell' : ['shellcheck'],
\'sh'       : ['shellcheck'],
\'verilog_systemverilog'    : ['iverilog'],
\'v'    : ['iverilog'],
\'sv'    : ['iverilog'],
\}

