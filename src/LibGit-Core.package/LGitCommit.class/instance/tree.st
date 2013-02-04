accessing
tree
	| tree |
	tree := NBExternalObject new.
	LGitFFI uniqueInstance commit_tree: tree commit: handle.
	^ LGitTree on: tree in: repo