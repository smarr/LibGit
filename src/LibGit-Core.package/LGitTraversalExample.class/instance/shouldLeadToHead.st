as yet unclassified
shouldLeadToHead
	| repo head |
	repo := self given: #shouldOpenRepo.
	
	head := repo head.
	head should not be nil.
	
	^ head