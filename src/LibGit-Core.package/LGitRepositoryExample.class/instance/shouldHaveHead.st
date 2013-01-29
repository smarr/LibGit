examples
shouldHaveHead
	| repo head |
	repo := self given: #shouldOpen.
	
	head := repo head.
	head should beKindOf: LGitReference.
	
	^ head