
"vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" vim help chinese
Plugin 'yianwillis/vimcdoc'
"nerdtree
Plugin 'The-NERD-Tree'
"vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/vim-easy-align'

" Track the engine.
Plugin 'SirVer/ultisnips'
" ale hint
Plugin 'dense-analysis/ale'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" code hint
Plugin 'https://github.com/Shougo/neocomplcache.vim'
" comment
Plugin 'preservim/nerdcommenter'
" auto veri
Plugin 'HonkW93/automatic-verilog'
" enhance begin end
Plugin 'https://github.com/vimtaku/hl_matchit.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype on
            


source ~/.vim/myinitvim/_03_nerdtree_setting.vim
source ~/.vim/myinitvim/_04_airline_setting.vim
source ~/.vim/myinitvim/_05_ale_setting.vim
source ~/.vim/myinitvim/_06_neocomplcache_setting.vim
source ~/.vim/myinitvim/_07_nerdcomment_setting.vim
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim

let g:UltiSnipsExpandTrigger="<tab>"
"  forward and backward in the hint
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsSnippetsDir="~/.vim/snippets"

            

            
"ALT-v nerd
function! ToggleVExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        if expl_win_num != -1
            let cur_win_nr = winnr()
            exec expl_win_num . 'wincmd w'
            close
            exec cur_win_nr . 'wincmd w'
            unlet t:expl_buf_num
        else
            unlet t:expl_buf_num
        endif
    else
        exec '1wincmd w'
        " Vexplore split vertical// Texplore  tab new 
        Vexplore
        let t:expl_buf_num = bufnr("%")
    endif
endfunction


"Ctrl-E nerd
function! ToggleTExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        if expl_win_num != -1
            let cur_win_nr = winnr()
            exec expl_win_num . 'wincmd w'
            close
            exec cur_win_nr . 'wincmd w'
            unlet t:expl_buf_num
        else
            unlet t:expl_buf_num
        endif
    else
        exec '1wincmd w'
        " Vexplore split vertical// Texplore  tab new 
        Texplore
        let t:expl_buf_num = bufnr("%")
    endif
endfunction

let g:atv_crossdir_mode = 1    "0:normal 1:filelist 2:tags
"AutoInst
let g:atv_autoinst_st_pos = 0
"AutoPara
let g:atv_autopara_st_pos = 0
"AutoReg&AutoWire&AutoDef
let g:atv_autodef_st_pos = 0
"AutoArg
let g:atv_autoarg_st_pos = 0


" " matchit
" "" If this variable is set, augroup is defined, and start highlighting.
" let g:match_highlight_groups = ['Label','verilogStatement2']
" let g:hl_matchit_enable_on_vim_startup = 1
" "" I recomend  g:hl_matchit_speed_level = 1 because highlight is
" "" just an addition.
" "" If 1 is set, sometimes do not highlight.
" let g:hl_matchit_speed_level = 1 " or 2



