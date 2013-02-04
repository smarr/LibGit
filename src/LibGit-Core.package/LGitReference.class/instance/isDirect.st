accessing
isDirect
	^ (LGitFFI uniqueInstance reference_type: handle) = GIT_REF_OID