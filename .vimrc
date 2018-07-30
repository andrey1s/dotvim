
execute pathogen#infect()

syntax on
set backup
set backupdir=~/.vim/backup/
set dir=~/.vim/tmp

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nu
set tabstop=4
set softtabstop=4
set t_Co=256
 colorscheme wombat256mod

filetype on
filetype plugin on


" F4 - NERDTree
nmap <F4> :NERDTreeToggle<CR>
vmap <F4> <esc>:NERDTreeToggle<CR>
imap <F4> <esc>:NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '~'
let g:NERDTreeDirArrowCollapsible = '+'
let NERDTreeIgnore=['\.pyc', '\.swp', '\.git$', '\.hg', '\.svn', '\.bzr']
let NERDTreeShowHidden=1
hi Normal ctermbg=233
hi Directory cterm=bold ctermfg=blue
nmap <Cmd-1> :NERDTreeToggle<CR>
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

" F5 - show buffer list
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - prew buffer
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - next buffer
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F12 - view files
nmap <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


