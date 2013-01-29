examples
shouldOpen
	| repo |
	repo := LGitRepository on: self class repoPathForTesting asFileReference.
	
	repo should beKindOf: LGitRepository.
	
	^ repo