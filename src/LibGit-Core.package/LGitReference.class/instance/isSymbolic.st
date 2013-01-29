accessing
isSymbolic
	^ (LGitRepositoryFFI uniqueInstance reference_type: handle) = GIT_REF_SYMBOLIC