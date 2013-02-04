lookup
lookup: name
	| refHandle returnCode |
	refHandle := NBExternalObject new.
	returnCode := LGitFFI uniqueInstance reference_lookup: refHandle in: handle name: name.
	
	returnCode = GIT_OK ifFalse: [ Error signal ].
	
	self flag: 'handle errors'.
	^ LGitReference on: refHandle in: self