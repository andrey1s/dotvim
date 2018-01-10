


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

