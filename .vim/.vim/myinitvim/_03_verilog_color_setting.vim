" " au Syntax * "when below not valid not comment
au Syntax * syn keyword verilogStatement2   function generate genvar module endfunction endgenerate endmodule always and assign for
" au Syntax * syn keyword verilogStatement3
hi def link verilogConditional verilogconditinal
hi def link verilogComment     verilogcomment
hi def link verilogConstant    verilogconstant
hi def link verilogLabel       verilogLabel
hi def link verilogNumber      verilogNumber
hi def link verilogStatement   verilogStatement
hi def link verilogStatement2  verilogStatement2
hi def link verilogStatement3  verilogStatement3
hi def link verilogGlobal      verilogGlobal
hi def link verilogOperator    verilogOperator

hi verilogOperator      guifg=#f9ed69
hi verilogconditional guifg=#ff9933 gui=bold
hi verilogLabel       guifg=#33ffff
hi verilogNumber      guifg=#fc5185
hi verilogStatement   guifg=#ffff33 gui=bold
" hi verilogStatement2  guifg=#ff9999 gui=bold
" hi verilogStatement3  guifg=#95e1d3 gui=bold

" hi verilogconditional guifg=#fbd367 gui=bold
hi verilogcomment     guifg=#9D9D9D
hi verilogconstant    guifg=#77B7BF gui=italic
" hi verilogLabel       guifg=#fdbd91
" hi verilogNumber      guifg=#0effe6
" hi verilogStatement   guifg=#E97D60  gui=bold
hi verilogStatement2  guifg=#7CFF7C gui=bold
hi verilogStatement3  guifg=#75D99F gui=bold
hi verilogGlobal      guifg=#C3A1D4 gui=bold



