initialization
initializeOn: aFileReference 
	| resultCode |
	handle := NBExternalObject new.
	resultCode := LGitFFI uniqueInstance
		repository_open: handle
		on: aFileReference pathString.
	
	self flag: 'add finialization/closing of repo'.
	
	resultCode = GIT_OK ifFalse: [ Error signal: 'Repository could not be opened' ].