as yet unclassified
setUp
	| repo headRef |	
	repo := LGitRepository on: LGitRepositoryExample repoPathForTesting asFileReference.
	headRef := repo head.
	commit := headRef commit