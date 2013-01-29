examples
shouldHaveMasterBranch
	| branches |
	branches := self given: #shouldHaveBranches.
	
	(branches collect: [:b | b name]) should include: 'refs/heads/master'.
	
	^ branches