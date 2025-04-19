

"Config for winManager plugin


"Config for Tlist plugin
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let g:Tlist_Use_Right_Window=1
let g:Tlist_Show_One_File=1


"=============================
" showmarks setting
"=============================
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 
hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black 

abbr #= #============================================================================
abbr #- #----------------------------------------------------------------------------
abbr //= //===
abbr //- //---
abbr "* "**************************************************************************

abbr //l // haojie: <F3>
abbr #l # haojie: <F3>


abbr xdef 
\// ===== GHB DEFINE ===== //<CR>
\//                          <CR>
\// ====================== //<CR>



abbr xclass 
\<HOME>class   extends   ;
\<CR><HOME>    // 1. var declare
\<CR><HOME>    
\<CR><HOME>    // 2. var constraint   
\<CR><HOME>    
\<CR><HOME>    // 3. factory register 
\<CR><HOME>    
\<CR><HOME>    // 4. function and task
\<CR><HOME>    
\<CR><HOME>endclass:<ESC>o 

abbr ef endfunction: <CR>
abbr endt endtask: <CR>
abbr ec endclass: <CR>

abbr xinfo 
\<HOME>    `uvm_info(get_type_name(),$sformatf("",),UVM_LOW)



abbr xdis 
\<HOME>    $display("",);<ESC>o
abbr xrand 
\<HOME>    assert(std::randomize(x) with {x > 0;});

abbr xerr  
\<HOME>    `uvm_error(get_type_name(),$sformatf("",))




abbr xwarn 
\<HOME>    `uvm_warning(get_type_name(),$sformatf("",))<ESC>o

abbr xset 
\<HOME>    uvm_config_db#()::set(this, "", "", );<ESC>o
abbr xget 
\<HOME>    uvm_config_db#()::get(this, "", "", );<ESC>o
abbr xcreate 
\<HOME>     = ::type_id::create("", this);<ESC>o
abbr xgc 
\<HOME>    if(!uvm_config_db#()::get(this, "", "", )) begin
\<CR><HOME>      =  ::type_id::create("", this);;
\<CR><HOME>    end<ESC>o

abbr xlong 
\<HOME>// -------------------------------------------------------------------------------------------------- //
\<CR><HOME>// 
\<CR><HOME>// -------------------------------------------------------------------------------------------------- //<ESC>o

abbr xlong2 
\<HOME>// --------------------------------------------------------------------------- //
\<CR><HOME>// 
\<CR><HOME>// --------------------------------------------------------------------------- //<ESC>o

abbr xshort 
\<HOME>// ----------------------------------------- //
\<CR><HOME>// 
\<CR><HOME>// ----------------------------------------- //<ESC>o


abbr atp @(posedge );<CR>
abbr atn @(negedge );<CR>
abbr xcs 
\<HOME>    constraint _cons {
\<CR><HOME>        this. dist {};
\<CR><HOME>        this. == ;
\<CR><HOME>    }<ESC>o

abbr xfor 
\<HOME>    for(int i=0; i<; i++) begin
\<CR><HOME>    end<ESC>o
abbr xforj 
\<HOME>    for(int j=0; j<; j++) begin
\<CR><HOME>    end<ESC>o
abbr xfork 
\<HOME>    for(int k=0; k<; k++) begin
\<CR><HOME>    end<ESC>o
 
abbr xforeach 
\<HOME>    foreach([i]) begin
\<CR><HOME>    end<ESC>o

abbr xif 
\<HOME>    if() begin
\<CR><HOME>    end
\<CR><HOME>    else begin
\<CR><HOME>    end<ESC>o
abbr xif2 
\<HOME>    if() begin
\<CR><HOME>    end
\<CR><HOME>    else if() begin
\<CR><HOME>    end
\<CR><HOME>    else begin
\<CR><HOME>    end<ESC>o
abbr xdist 
\<HOME> assert(std::randomize() with { dist {[:]:/1};});

abbr xbegin // ==========   begin  ========== //
abbr xend   // ==========   end    ========== //

abbr addby   
\//---------- add by haojieliu <C-R>=strftime("%Y_%m_%d-%H:%M")<CR> --- begin ----------//<CR>
\//---------- add by haojieliu<C-R>=strftime("%Y_%m_%d-%H:%M")<CR> --- end   ----------//<CR>

"function! CleverTab()
"if strpart( getline('.'), 0, col('.')-1 ) =~ '^s*$'
"return "\<Tab>"
"else
"return "\<C-N>"
"endif
"endfunction
"inoremap <Tab> <C-R>=CleverTab()<CR>
"end


