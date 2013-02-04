accessing
isBare
	^ (LGitFFI uniqueInstance repository_is_bare: handle) = 1