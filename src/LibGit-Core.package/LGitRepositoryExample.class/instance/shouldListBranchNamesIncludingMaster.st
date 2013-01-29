examples
shouldListBranchNamesIncludingMaster
	| repo branches |
	repo := self given: #shouldOpen.
	
	branches := repo branchNames.
	branches isEmpty should beFalse.
	branches should include: 'master'.
	
	^ branches