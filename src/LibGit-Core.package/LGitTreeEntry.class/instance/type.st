accessing
type
	handle isNull ifTrue: [
		Halt now ].
	
	^ LGitFFI uniqueInstance
			tree_entry_type: handle