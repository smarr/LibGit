fixture
setUp
	repo := LGitRepository on: LGitRepositoryExample repoPathForTesting asFileReference.
	headRef := repo head.