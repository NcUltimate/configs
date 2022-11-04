:syntax on                                                                                               

" turn on autoindenting
set ai

" Colorscheme
colo torte

" turn on line numbers and positions information
set ruler 
set number
set cursorline
highlight LineNr ctermfg=grey

" turn off alarm bell
set vb

" tab space = 4
set ts=2
set shiftwidth=2

" use spaces instead of tabs
set expandtab

" Change background and foreground color
" highlight Normal ctermfg=Grey  ctermbg=Black

" set % to recognize additional kinds of brackets
set matchpairs+=<:>
set matchpairs+="(*":"*)"

" set auto wrapping for text files
autocmd BufNewFile,BufRead *.txt exe "set wrapmargin=8"

""""""""""""""""""""""""""""""""""""""""
"     COMMAND MAPPINGS
""""""""""""""""""""""""""""""""""""""""
" append date and time after cursor
map <F2> a<C-R>=strftime("%c")<CR><Esc>

" big E goes to end of line, big B goes to beginning
map E $ 
map B 0 

" shortcuts for autocompletion (normally C-P)
inoremap ;p <C-P>

" for moving between windows
noremap ;w <C-W>

" open up the NERDTree
noremap ;n :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""
" Syntax highlighting
"""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead config.ru set filetype=ruby
