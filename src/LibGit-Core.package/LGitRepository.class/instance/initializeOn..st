initialization
initializeOn: aFileReference 
	| resultCode |
	handle := NBExternalObject new.
	resultCode := LGitRepositoryFFI uniqueInstance
		repository_open: handle
		on: aFileReference pathString.
	
	self flag: 'add finialization/closing of repo'.
	
	resultCode = 0 ifFalse: [ Error signal: 'Repository could not be opened' ].