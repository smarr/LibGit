as yet unclassified
lookup: name
	| refHandle returnCode |
	refHandle := NBExternalObject new.
	returnCode := LGitRepositoryFFI uniqueInstance reference_lookup: refHandle in: handle name: (NBExternalAddress fromString: name).
	
	returnCode = GIT_OK ifFalse: [ Error signal ].
	
	self flag: 'handle errors'.
	^ LGitReference on: refHandle in: handle