call LspAddServer([#{
	\    name: 'golang',
	\    filetype: ['go', 'gomod'],
	\    path: '/nix/store/9jrw0f9snjamw6bbc90yy04m0xd5l6zz-gopls-0.18.1/bin/gopls',
	\    args: ['serve'],
	\    syncInit: v:true
	\  }])
