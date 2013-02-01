as yet unclassified
shouldLeadToTree
	| commit tree |
	commit := self given: #shouldLeadToCommit.
	
	tree := commit tree.
	tree should not be nil.
	
	^ tree