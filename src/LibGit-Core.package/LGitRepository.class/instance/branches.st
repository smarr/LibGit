accessing
branches
	"should return references to branches"
	| branchNames branches |
	branchNames := self branchNames.
	
	^ branchNames collect: [:name |
		self lookupBranch: name ]