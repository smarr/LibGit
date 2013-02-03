accessing
object
	| objHandle |
	objHandle := NBExternalObject new.
	LGitRepositoryFFI uniqueInstance
			tree_entry_to_object: objHandle repo: repo privHandle entry: handle.
	^ LGitObject inferTypeFor: objHandle in: repo