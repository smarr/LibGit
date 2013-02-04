as yet unclassified
shouldHaveParents
	| parents |
	parents := commit parents.
	
	parents should beKindOf: Collection.
	parents size should be > 0.
	
	parents first should beKindOf: LGitCommit.
	
	^ parents