accessing
type
	handle isNull ifTrue: [
		Halt now ].
	
	^ LGitRepositoryFFI uniqueInstance
			tree_entry_type: handle