lookup
lookupBranch: name
	| refHandle |
	refHandle := NBExternalObject new.
	LGitFFI uniqueInstance
		branch_lookup: refHandle
		in: handle
		name: name
		branch_type: GIT_BRANCH_LOCAL.
	
	self flag: 'handle errors'.
	^ LGitReference on: refHandle in: self