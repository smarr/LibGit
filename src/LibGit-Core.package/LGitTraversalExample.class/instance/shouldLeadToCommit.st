as yet unclassified
shouldLeadToCommit
	| head commit |
	head := self given: #shouldLeadToHead.
	
	commit := head commit.
	commit should not be nil.
	
	^ commit