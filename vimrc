vim9script

set number
set relativenumber
set ttyfast
set nocompatible
set cursorline
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
set formatoptions+=oj
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
set undodir=~/.cache/vim/undo
set undolevels=10000
set shiftwidth=2
set softtabstop=2
set completeopt=menu,popup
set statusline=%-F%-M\ %-y\ %-q%=%l:%v\ [0x%B]\ %p%%
set updatetime=300
set complete+=kspell
set shortmess+=c
set scrolloff=10
set spelllang=en_us

# lsp
packadd lsp

# aux
filetype plugin indent on
syntax enable
colorscheme slate
runtime ftplugin/man.vim

# pluging configs
g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md', 'path': '~/media/docs/vimwiki'}]
g:UltiSnipsExpandTrigger = '<c-s>'
g:UltiSnipsJumpForwardTrigger = '<c-]>'
g:UltiSnipsJumpBackwardTrigger = '<c-[>'

inoremap <expr> <Tab> pumvisible() ? '<c-n>' : '<tab>'
inoremap <expr> <S-Tab> pumvisible() ? '<c-p>' : '<s-tab>'
inoremap <expr> <cr> pumvisible() ? '<c-y><cr>' : '<cr>'

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
	autoHighlightDiags: true,
	snippetSupport: true,
	semanticHighlight: true,
	ultisnipsSupport: true,
	usePopoupInCodeAction: true,
	useBufferCompletion: true,
	diagSignErrorText: '',
	diagSignHintText: '',
	diagSignInfoText: '',
	diagSignWarningText: '',
	showDiagWithVirtualText: true,
	diagVirtualTextAlign: 'after'
}
call g:LspOptionsSet(lspOpts)

nmap gf :LspFormat<cr>
nmap gi :LspGotoImpl<cr>
nmap ga :LspCodeAction<cr>
nmap gd :LspGotoDefinition<cr>
nmap K  :LspHover<cr>
nmap gr :LspRename<cr>
