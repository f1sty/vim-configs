" settings
set number
set relativenumber
set nocompatible
set backspace=indent,eol,start
set smarttab
set nrformats-=octal
set ttimeout
set ttimeoutlen=100
set incsearch
set laststatus=2
set wildmenu
set scrolloff=1
set sidescroll=1
set sidescrolloff=2
set display+=lastline
set display+=truncate
set formatoptions+=j
set autoread
set history=1000
set tabpagemax=50
set sessionoptions-=options
set viewoptions-=options
set nolangremap
set nobackup
set nowritebackup
set noswapfile
set undofile
set undodir="/home/f1sty/.cache/vim/undo"
set undolevels=10000

" lsp
packadd lsp

" aux
filetype plugin indent on
syntax enable
colorscheme slate
runtime ftplugin/man.vim

" pluging configs
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md', 'path': '~/media/docs/vimwiki'}]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" mappings
nmap <leader>dd :r !date +\%F<cr>
nmap ]b :bn<cr>
nmap [b :bp<cr>

" fzf.vim mappings
nmap <leader>ff :Files<cr>
nmap <leader>fb :Buffers<cr>
nmap <leader>fc :Colors<cr>
nmap <leader>fg :Rg<cr>
nmap <leader>fs :Snippets<cr>
nmap <leader>fm :Marks<cr>

" lsp mappings
nmap <leader>lf :LspFormat<cr>
nmap <leader>le :LspGotoDeclaration<cr>
nmap <leader>li :LspGotoImpl<cr>
nmap <leader>la :LspCodeAction<cr>
nmap <leader>ld :LspDiagCurrent<cr>
