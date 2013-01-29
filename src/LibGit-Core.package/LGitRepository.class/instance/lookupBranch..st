as yet unclassified
lookupBranch: name
	| refHandle |
	refHandle := NBExternalObject new.
	LGitRepositoryFFI uniqueInstance
		branch_lookup: refHandle
		in: handle
		name: (NBExternalAddress fromString: name)
		branch_type: GIT_BRANCH_LOCAL.
	
	self flag: 'handle errors'.
	^ LGitReference on: refHandle in: handle