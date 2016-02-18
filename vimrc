set term=xterm
set t_Co=256

noremap <F11> <Esc>:bp<CR>
noremap <F12> <Esc>:bn<CR>

set colorcolumn=80
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set smarttab
set backspace=indent,eol,start
set showmatch
set incsearch
set hlsearch
set ruler
set ignorecase
set smartcase
syntax on

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'majutsushi/tagbar'
Plugin 'vim-jp/vim-go-extra'

call vundle#end()
filetype plugin indent on

let mapleader = ','

" YouCompleteMe
noremap <leader>. :YcmCompleter GoToDefinitionElseDeclaration<CR>
noremap <leader>k :YcmCompleter GoToImplementation<CR>
noremap <leader>j :YcmCompleter GoToReferences<CR>
noremap <F4> :YcmDiags<CR>
noremap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_open_loclist_on_ycm_diags = 1


" tagbar
let g:tagbar_usearrows = 1
let g:tagbar_autofocus = 1
noremap <F10> :TagbarOpenAutoClose<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype',
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" stuff for golang
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd FileType go setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType go setlocal noexpandtab

