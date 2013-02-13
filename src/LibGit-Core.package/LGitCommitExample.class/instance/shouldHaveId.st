as yet unclassified
shouldHaveId
	| id |
	id := commit id.
	
	id should beKindOf: String.
	id size should be = 40.
	^ id