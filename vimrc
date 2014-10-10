" lets use the internet standard charset
set encoding=UTF-8
au BufRead,BufNewFile * start

set nobackup
set noswapfile
set paste

" mouse support
set mouse=a 

" vundle package manager
set nocompatible
set t_Co=256
filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
Bundle 'gmarik/Vundle.vim'

" packages
"Bundle 'vim-scripts/The-NERD-tree'
Bundle 'msanders/snipmate.vim'
Bundle 'wavded/vim-stylus'
Bundle 'digitaltoad/vim-jade'
Bundle 'tpope/vim-markdown'
Bundle 'pbrisbin/html-template-syntax'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/powerline'
Bundle 'derekwyatt/vim-scala'
Bundle 'b4winckler/vim-objc'
Plugin 'StanAngeloff/php.vim'

filetype plugin indent on

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set noshowmode

" syntax highlighting
syntax enable
" if has('gui_running')
set background=dark
colorscheme solarized
" else
" set background=light
" endif

" also yank to X clipboard, requires +X11 +clipboard
set clipboard=unnamedplus

set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp
set mousemodel=popup

" indention rules
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

" visuals
set list
set listchars=tab:→\ ,extends:►,precedes:◄
set formatoptions+=tc
set ruler
set rulerformat="%l/%L (%p%%), %c"
set showmatch
set display+=lastline
set number
set cursorline

" search
set hls
set ignorecase
set smartcase

" folding
set foldmethod=indent
set foldlevel=99

" window focus movement
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" python pep8 and validation
let g:pyflakes_use_quickfix=0

" paste on C-p using lodgeit
map <C-p> :Lodgeit<CR>

" NERDTree settings
"let NERDTreeChDirMode=2
"let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '^\.']
"let NERDTreeShowBookmarks=1
"map <F3> :NERDTreeToggle<CR>


" python related settings
au FileType py set textwidth=79
au FileType py set smartindent
" c related settings
au FileType c set textwidth=79

" tabline
function MyTabs()
    let s = ''
    for i in range(tabpagenr('$'))
        let n = i + 1
        if n == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        let buflist = tabpagebuflist(n)
        let winnr = tabpagewinnr(n)

        let s .= '%' . (i + 1) . 'T'
        let s .= ' ' . n . '.' . bufname(buflist[winnr - 1]) .' '
    endfor

    let s .= '%#TabLineFill#%T'

    return s
endfunction
set tabline=%!MyTabs()

if !has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

function! s:CloseIfOnlyControlWinLeft()
    if winnr("$") != 1
        return
    endif
    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
            \ || &buftype == 'quickfix'
        q
    endif
endfunction
augroup CloseIfOnlyControlWinLeft
    au!
    au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END
