accessing
isBranch
	^ (LGitRepositoryFFI uniqueInstance reference_is_branch: handle) = 1