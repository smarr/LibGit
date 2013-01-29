examples
shouldHaveBranches
	| repo branches |
	repo := self given: #shouldOpen.
	
	branches := repo branches.
	branches isEmpty should beFalse.
	
	^ branches