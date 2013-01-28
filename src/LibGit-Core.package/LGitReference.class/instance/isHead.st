accessing
isHead
	^ (LGitRepositoryFFI uniqueInstance branch_is_head: handle) = 1