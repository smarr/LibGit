examples
shouldLookupMasterBranch
	| repo branch |
	repo := self given: #shouldOpen.
	branch := repo lookupBranch: 'master'.
	
	branch should beKindOf: LGitReference.
	branch name should = 'refs/heads/master'.

	^ branch