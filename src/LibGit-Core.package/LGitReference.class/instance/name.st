accessing
name
	^ (LGitRepositoryFFI uniqueInstance reference_name: handle) readString