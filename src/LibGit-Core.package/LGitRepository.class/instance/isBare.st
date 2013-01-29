accessing
isBare
	^ (LGitRepositoryFFI uniqueInstance repository_is_bare: handle) = 1