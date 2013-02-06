evaluating
execute
	| repoHandle optionsHandle errCode |
	repoHandle := NBExternalObject new.

	optionsHandle := self composeOptions.	

	errCode := LGitFFI uniqueInstance
		clone:      repoHandle
		url:        url
		local_path: localFolder pathString
		options:    optionsHandle.
	
	errCode = GIT_OK ifTrue: [
		^ LGitRepository privOnHandle: repoHandle ].
	
	Halt now.