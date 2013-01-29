examples
shouldListBranchRefs
	| branches |
	branches := self given: #shouldHaveBranches.
	
	branches first should beKindOf: LGitReference.
	
	^ branches