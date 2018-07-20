" ==================== plugins ==================== {{{

filetype off                  " required

set rtp+=$VIMHOME/bundle/Vundle.vim
call vundle#begin($VIMHOME . "/bundle")

Plugin 'gmarik/Vundle.vim'

if has('lua')
    " 自动完成
    Plugin 'shougo/neocomplete.vim'
endif
"python-mode
Plugin 'python-mode/python-mode', { 'branch': 'develop' }

Plugin 'kien/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
" 主题
Plugin 'LujianDuan/molokai'
"vim-go
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plugin 'SirVer/ultisnips'
call vundle#end()            " required

" }}}
" ==================== neocomplete ==================== {{{

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
inoremap <expr><C-Space>  pumvisible() ? "\<C-n>" : "\<C-Space>"

" YCM settings
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['']
let g:ycm_key_invoke_completion = '<C-Space>'

" UltiSnips setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-N>" : "\<TAB>"

" 自动选中第一个
let g:neocomplete#enable_auto_select = 1
" 使用 CTRL+X+O 提示参数时只显示下拉提示，不显示 preview
" 为 1 且配合set completeopt+=preview 则永久显示
" https://github.com/Shougo/neocomplete.vim/issues/95
let g:neocomplete#enable_auto_close_preview = 0

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php    = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.python = '[^. *\t]\.\w*\|\h\w*'

" 使用 vim-multiple-cursors 插件进行多点编辑时锁定 NeoComplete
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

" }}}
" ==================== nerdtree ==================== {{{

" 禁止载入 netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

