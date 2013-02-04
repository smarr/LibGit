accessing
parents
	| ffi n parents |
	ffi := LGitFFI uniqueInstance.
	
	n := ffi commit_parentcount: handle.
	
	parents := Array new: n.
	
	1 to: n do: [:i | | parentOid parentHandle |
		parentOid := ffi commit_parent_id: handle n: i - 1.
		
		parentHandle := NBExternalObject new.
		ffi object_lookup: parentHandle in: repo privHandle id: parentOid type: GIT_OBJ_COMMIT.
		
		parents at: i put: (LGitCommit on: parentHandle in: repo). 
	].

	^ parents.