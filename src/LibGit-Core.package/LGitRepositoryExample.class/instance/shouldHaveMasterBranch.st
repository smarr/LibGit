examples
shouldHaveMasterBranch
	| branches |
	branches := self given: #shouldHaveBranches.
	
	(branches gather: [:b | b name]) should include: 'master'.
	
	^ branches