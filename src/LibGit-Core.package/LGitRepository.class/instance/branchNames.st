accessing
branchNames
	| callback branchNames |
	branchNames := OrderedCollection new.
	callback := LGitBranchForeachCb on: [:branchName :branchType :payload |
		branchNames add: branchName readString.
		0 " 0 -> continue" ].
	
	LGitRepositoryFFI uniqueInstance 
		branch_foreach: handle 
		type: GIT_BRANCH_LOCAL value
		do: callback
		with: NBExternalAddress null.
	
	self flag: 'handle errors'.
	
	^ branchNames