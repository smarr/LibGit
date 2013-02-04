accessing
isHead
	^ (LGitFFI uniqueInstance branch_is_head: handle) = 1