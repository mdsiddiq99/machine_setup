" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section

" A code-completion engine for Vim
Plug 'valloric/youcompleteme'

" A file tree explorer for Vim
Plug 'scrooloose/nerdtree'
	
" Quickly find and open files using fuzzy searches
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Manage Git commands with ease
Plug 'tpope/vim-fugitive'

" Supercharge your Vim status bar
Plug 'vim-airline/vim-airline'

" Multi-cursor support for Vim
Plug 'terryma/vim-multiple-cursors'

" Automatically wrap your text selections in brackets
Plug 'tpope/vim-surround'
call plug#end()


" Use deoplete.
let g:deoplete#enable_at_startup = 1
" Set compatibility to Vim only.
set nocompatible
" Turn on syntax highlighting.
syntax on
" For plug-ins to load correctly.
filetype plugin indent on
" Turn off modelines
set modelines=0
" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noshiftround
" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start
" Speed up scrolling in Vim
set ttyfast
" Status bar
set laststatus=2
" Display options
set showmode
set showcmd
" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>
" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
" Show line numbers
set number
" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
" Encoding
set encoding=utf-8
" Highlight matching search patterns
set hlsearch
" Include only uppercase words with uppercase search term
set smartcase
" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100
" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"
" end vim-plug
set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
" Enable basic mouse behavior such as resizing buffers.
set mouse=a

