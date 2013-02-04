instance creation
inferTypeFor: objHandle in: repo
	| type cls |
	
	objHandle isNull ifTrue: [Halt now].
	
	type := LGitFFI uniqueInstance object_type: objHandle.
	
	type = GIT_OBJ_BLOB   ifTrue: [ cls := LGitBlob   ].
	type = GIT_OBJ_COMMIT ifTrue: [ cls := LGitCommit ].
	type = GIT_OBJ_TREE   ifTrue: [ cls := LGitTree   ].
	
	^ cls on: objHandle in: repo