as yet unclassified
id
	| ffi oidPtr extStr str |
	ffi := LGitFFI uniqueInstance.
	oidPtr := ffi object_id: handle.
	extStr := NativeBoost allocate: 40 + 1.
	
	ffi oid_fmt: extStr id: oidPtr.

	str := extStr readString.
	extStr free.
	^ str