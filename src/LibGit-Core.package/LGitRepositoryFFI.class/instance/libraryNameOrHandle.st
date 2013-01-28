utils
libraryNameOrHandle
	NativeBoost platformId = 2 
		ifTrue:[^ '/Users/smarr/tmp/libgit/libgit2/build/libgit2.dylib' ].
	
	self error: 'define your own path'