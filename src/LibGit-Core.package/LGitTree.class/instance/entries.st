traversing
entries
	| entryCnt ffi entries |
	ffi := LGitFFI uniqueInstance.

	entryCnt := ffi tree_entrycount: handle.
	entries := Array new: entryCnt.
	
	1 to: entryCnt do: [:i |
		| entry |
		entry := LGitTreeEntry on: (ffi tree_entry_byindex: handle idx: i - 1) in: repo.
		entries at: i put: entry
	].

	^ entries