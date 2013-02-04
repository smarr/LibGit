accessing
commit
	| commitHandle id |
	commitHandle := NBExternalObject new.
	id := self privObjectIdPtr.
	LGitFFI uniqueInstance 
		object_lookup: commitHandle in: repo privHandle id: id type: GIT_OBJ_COMMIT.
	
	self flag: 'handle errors'.
	
	^ LGitCommit on: commitHandle in: repo