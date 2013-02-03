traverse repo
resolve
	| resolvedHandle |
	resolvedHandle := NBExternalObject new.
	LGitRepositoryFFI uniqueInstance reference_resolve: handle to: resolvedHandle.
	^ LGitReference on: resolvedHandle in: repo