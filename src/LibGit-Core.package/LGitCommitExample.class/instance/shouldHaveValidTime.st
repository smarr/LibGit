as yet unclassified
shouldHaveValidTime
	| when |
	when := commit time.
	
	when should beKindOf: DateAndTime.
	
	^ when