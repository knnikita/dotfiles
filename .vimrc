set ttymouse=sgr
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set ruler
syntax on                       " syntax highlighing
filetype on                     " try to detect filetypes
filetype plugin indent on       " enable loading indent file for filetype
set number                      " Display line numbers
set enc=utf-8
set ls=2                        " Always show status line
set incsearch                   " Incrementally search while typing a /regex
set hlsearch                    " Highlight searches by default
set scrolloff=5                 " 5 lines when scrolling at a time
set nobackup                    " no backup files
set nowritebackup               " only in case you don't want a backup file while editing
set noswapfile                  " no swap files
set smartcase
set ignorecase
set nowrap                      " wrap lines
set lazyredraw                  " some speedup
set wrap linebreak nolist
" set cursorline
set ai
" set paste
"colorscheme evening
filetype plugin indent on
highlight Comment ctermfg=green
highlight Comment cterm=bold
highlight StatusLine ctermbg=0 cterm=NONE
hi Search cterm=NONE ctermfg=grey ctermbg=58

hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan



let g:airline_powerline_fonts = 1
" set cc=80
highlight ColorColumn ctermbg=black

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif



map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set tags=./tags;/
