" Set font size
set guifont=Consolas:h12:b

" Set spell check
set spell

" Disable ding sounds
set vb t_vb=

" Custom paths
let $CONFIG='~/.config/nvim/'
let $BUNDLES='~/.config/nvim/bundles.vim'
"let $SNIPPETS='C:\Users\eohje\Google Drive\programs\vim\ultisnips'

" Colorscheme
colorscheme evening

" vim-latex settings. See
" http://vim-latex.sourceforge.net/documentation/latex-suite/recommended-settings.html
" source $CONFIG\vim-latex.vim
nmap <space>c :!pdflatex %<CR>
nmap <space>b :!biber %:r.bcf<CR>

" vundle
" https://github.com/VundleVim/Vundle.vim
source $CONFIG\bundles.vim

" ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"		" If you want :UltiSnipsEdit to split your window.
let g:tex_flavor="tex"
" let g:UltiSnipsSnippetsDir=$SNIPPETS

" Supertab
autocmd BufRead,BufNewFile *.tex set iskeyword+=:,-

" Start in the most commonly used folder
"cd $PROJECTS

