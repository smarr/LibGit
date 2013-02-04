accessing
isEmpty
	^ (LGitFFI uniqueInstance repository_is_empty: handle) = 1