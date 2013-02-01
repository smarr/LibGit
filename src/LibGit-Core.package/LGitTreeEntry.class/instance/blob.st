as yet unclassified
blob
	| blobHandle |
	blobHandle := NBExternalObject new.
	LGitRepositoryFFI uniqueInstance tree_entry_to_object: blobHandle repo: repo entry: handle.
	
	^ LGitObject inferTypeFor: blobHandle in: repo