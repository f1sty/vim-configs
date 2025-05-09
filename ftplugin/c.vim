call LspAddServer([#{
	\    name: 'clangd',
	\    filetype: ['c', 'cpp'],
	\    path: '/usr/lib/llvm/20/bin/clangd',
	\    args: ['--background-index']
	\  }])
