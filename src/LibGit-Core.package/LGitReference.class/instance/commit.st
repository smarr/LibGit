accessing
commit
	| commitHandle id |
	commitHandle := NBExternalObject new.
	id := self objectIdPtr.
	LGitRepositoryFFI uniqueInstance 
		object_lookup: commitHandle in: repoHandle id: id type: GIT_OBJ_COMMIT.
	
	self flag: 'handle errors'.
	
	^ LGitCommit on: commitHandle