accessing
isSymbolic
	^ (LGitFFI uniqueInstance reference_type: handle) = GIT_REF_SYMBOLIC