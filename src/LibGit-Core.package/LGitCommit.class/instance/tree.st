accessing
tree
	| tree |
	tree := NBExternalObject new.
	LGitRepositoryFFI uniqueInstance commit_tree: tree commit: handle.
	^ LGitTree on: tree in: repo