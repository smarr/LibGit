accessing
isDirect
	^ (LGitRepositoryFFI uniqueInstance reference_type: handle) = GIT_REF_OID