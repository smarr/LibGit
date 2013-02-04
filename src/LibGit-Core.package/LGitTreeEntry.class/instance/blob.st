accessing
blob
	| blobHandle |
	blobHandle := NBExternalObject new.
	LGitFFI uniqueInstance tree_entry_to_object: blobHandle repo: repo privHandle entry: handle.
	
	^ LGitObject inferTypeFor: blobHandle in: repo