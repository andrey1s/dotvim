
execute pathogen#infect()

syntax on
set backup
set backupdir=~/.vim/backup/
set dir=~/.vim/tmp

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nu
set backspace=indent,eol,start "http://vimhelp.appspot.com/options.txt.html#%27backspace%27

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set smarttab
set expandtab

set t_Co=256
colorscheme wombat256mod
"colorscheme foursee
let mapleader = ","

filetype on
filetype plugin on

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" map splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"------------------------------------------------------------------------------
" F4 - NERDTree
"------------------------------------------------------------------------------
let g:NERDTreeDirArrowExpandable = '~'
let g:NERDTreeDirArrowCollapsible = '+'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeStatusLine = -1
let NERDTreeIgnore=['\.pyc', '\.swp', '\.git$', '\.hg', '\.svn', '\.bzr']
let NERDTreeShowHidden=1
hi Normal ctermbg=233
hi Directory cterm=bold ctermfg=blue
nmap \e :NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('ini', '143', 'none')
call NERDTreeHighlightFile('md', '184', 'none')
call NERDTreeHighlightFile('yml', '208', 'none')
call NERDTreeHighlightFile('log', '178', 'none')
call NERDTreeHighlightFile('txt', '192', 'none')

call NERDTreeHighlightFile('png', '65', 'none')
call NERDTreeHighlightFile('jpg', '66', 'none')
call NERDTreeHighlightFile('ico', '73', 'none')

call NERDTreeHighlightFile('php', '250', 'none')
call NERDTreeHighlightFile('js', '130', 'none')
call NERDTreeHighlightFile('json', '166', 'none')
call NERDTreeHighlightFile('html', '205', 'none')
call NERDTreeHighlightFile('twig', '204', 'none')
call NERDTreeHighlightFile('css', '210', 'none')
call NERDTreeHighlightFile('scss', '210', 'none')
call NERDTreeHighlightFile('xml', '170', 'none')

call NERDTreeHighlightFile('gitignore', '240', 'none')
call NERDTreeHighlightFile('gitignore', '240', 'none')
call NERDTreeHighlightFile('gitkeep', '240', 'none')
call NERDTreeHighlightFile('htaccess', '240', 'none')
call NERDTreeHighlightFile('lock', '245', 'none')

"let NERDTreeKeepTreeInNewTab=1

" show buffer list
nmap \b <Esc>:BufExplorer<cr>

" Shift-Tab - next buffer
nmap <S-Tab> :bn<cr>
imap <S-Tab> <esc>:bn<cr>i
vmap <S-Tab> <esc>:bn<cr>i

"------------------------------------------------------------------------------
" syntastic
"------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"------------------------------------------------------------------------------
" SuperTab
"------------------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = "context"

"------------------------------------------------------------------------------
" Vim-go
"------------------------------------------------------------------------------
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports" "Explicited the formater plugin (gofmt, goimports, goreturn...)
let g:go_auto_type_info = 1

" Show a list of interfaces which is implemented by the type under your cursor
au FileType go nmap <Leader>s <Plug>(go-implements)

" Show type info for the word under your cursor
au FileType go nmap <Leader>i <Plug>(go-info)

" Open the relevant Godoc for the word under the cursor
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" Open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" Run/build/test/coverage
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" By default syntax-highlighting for Functions, Methods and Structs is disabled.
" Let's enable them!
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

nmap <F8> :TagbarToggle<CR>
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
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


