examples
shouldLookupHead
	| repo ref |
	repo := self given: #shouldOpen.
	ref := repo lookup: 'HEAD'.
	
	ref should beKindOf: LGitReference.
	ref name should = 'HEAD'.
	ref resolve isHead should be true.
	
	^ ref