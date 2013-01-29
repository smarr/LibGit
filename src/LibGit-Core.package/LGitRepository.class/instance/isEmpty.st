accessing
isEmpty
	^ (LGitRepositoryFFI uniqueInstance repository_is_empty: handle) = 1