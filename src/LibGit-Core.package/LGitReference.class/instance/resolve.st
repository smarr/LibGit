traverse repo
resolve
	| resolvedHandle |
	resolvedHandle := NBExternalObject new.
	LGitFFI uniqueInstance reference_resolve: handle to: resolvedHandle.
	^ LGitReference on: resolvedHandle in: repo