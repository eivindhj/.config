" For new installations, $CONFIG, $BUNDLES, and set rtp+=... may have to be changed




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



" vim-latex settings. See
" http://vim-latex.sourceforge.net/documentation/latex-suite/recommended-settings.html
" source $CONFIG\vim-latex.vim
nmap <space>c :!pdflatex %<CR>
nmap <space>b :!biber %:r.bcf<CR>



" set up vundle
" following github.com/arusahni/dotfiles
" https://github.com/VundleVim/Vundle.vim
let vundle_install = 1
let vundle_readme = '~/.nvim/Vundle.vim/README.md'
if !filereadable(vundle_readme)
	echo "Installing Vundle..."
	call mkdir('~/.nvim', "p")
	execute "!git clone https://github.com/gmarik/vundle ~/.nvim/Vundle.vim"
	let vundle_install = 0
endif
" Below is the official suggested vundle stuff
filetype off
set rtp+=~/.nvim/Vundle.vim
call vundle#begin()
source $BUNDLES
call vundle#end()
filetype plugin indent on
if vundle_install == 0
	echo "Installing Vundle plugins..."
	PluginInstall
endif


" Colorscheme
colorscheme evening



" ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"		" If you want :UltiSnipsEdit to split your window.
let g:tex_flavor="tex"


" Supertab
autocmd BufRead,BufNewFile *.tex set iskeyword+=:,-

