call LspAddServer([#{
	\    name: 'clangd',
	\    filetype: ['c', 'cpp'],
	\    path: '/run/current-system/sw/bin/clangd',
	\    args: ['--background-index']
	\  }])
