as yet unclassified
shouldOpenRepo
	|  repo |
	repo := LGitRepository on: LGitRepositoryExample repoPathForTesting asFileReference.
	
	repo should beKindOf: LGitRepository.
	
	^ repo