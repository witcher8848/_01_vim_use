scriptencoding utf-8
" Vim filetype detection file
" Language:     PlantUML
" Maintainer:   Anders Thøgersen <first name at bladre dot dk>
" License:      VIM LICENSE
" ftdetect 脚本由 filetype.vim 在 filetypedetect augroup 内 source，
" 这里直接定义 autocmd 即可，切勿切换到自定义 augroup（否则会泄漏当前组，
" 导致字母序在后的其它 ftdetect 脚本把命令注册到默认组）。
autocmd BufRead,BufNewFile * if !did_filetype() && getline(1) =~# '@startuml\>'| setfiletype plantuml | endif
autocmd BufRead,BufNewFile *.pu,*.uml,*.plantuml,*.puml set filetype=plantuml
