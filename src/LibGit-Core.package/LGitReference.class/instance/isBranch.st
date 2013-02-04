accessing
isBranch
	^ (LGitFFI uniqueInstance reference_is_branch: handle) = 1