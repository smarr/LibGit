private
objectIdPtr
	| oId ffi |
	ffi := LGitRepositoryFFI uniqueInstance.
	oId := ffi reference_target: handle.
	
	oId isNull ifTrue: [
		| resolvedHandle |
		resolvedHandle := NBExternalObject new.
		ffi reference_resolve: handle to: resolvedHandle.
		oId := ffi reference_target: resolvedHandle.
	].

	^ oId