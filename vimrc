vim9script

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
set history=10000
set tabpagemax=50
set sessionoptions-=options
set viewoptions-=options
set nolangremap
set nobackup
set nowritebackup
set noswapfile
set hidden
set undofile
set undodir="/home/f1sty/.cache/vim/undo"
set undolevels=10000
set shiftwidth=2
set softtabstop=2
# set statusline='%-F%-M\ %-y\ %-q%=%l:%v\ [0x%B]\ %p%%'

# lsp
packadd lsp

# aux
filetype plugin indent on
syntax enable
colorscheme slate
runtime ftplugin/man.vim

# pluging configs
g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md', 'path': '~/media/docs/vimwiki'}]
g:UltiSnipsExpandTrigger = "<tab>"
g:UltiSnipsJumpForwardTrigger = "<c-b>"
g:UltiSnipsJumpBackwardTrigger = "<c-z>"

# mappings
nmap <leader>dd :r !date +\%F<cr>
nmap ]b :bn<cr>
nmap [b :bp<cr>

# fzf.vim mappings
nmap <leader>ff :Files<cr>
nmap <leader>fb :Buffers<cr>
nmap <leader>fc :Colors<cr>
nmap <leader>fg :Rg<cr>
nmap <leader>fs :Snippets<cr>
nmap <leader>fm :Marks<cr>

# lsp settings
var lspOpts = {
	autoHighlightDiags: v:true,
	noNewlineInCompletion: true,
	snippetSupport: true,
	ultisnipsSupport: true,
	diagSignErrorText: '',
	diagSignHintText: '',
	diagSignInfoText: '',
	diagSignWarningText: ''
}
call g:LspOptionsSet(lspOpts)

nmap <leader>lf :LspFormat<cr>
nmap <leader>li :LspGotoImpl<cr>
nmap <leader>la :LspCodeAction<cr>
nmap <leader>ld :LspGotoDefinition<cr>
nmap <leader>lh :LspHover<cr>
nmap <leader>lr :LspRename<cr>
