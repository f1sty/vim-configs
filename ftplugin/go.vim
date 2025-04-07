call LspAddServer([#{
	\    name: 'golang',
	\    filetype: ['go', 'gomod'],
	\    path: '/usr/bin/gopls',
	\    args: ['serve'],
	\    syncInit: v:true
	\  }])
