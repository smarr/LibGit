accessing
rawcontent
	| ffi contentPtr contentSize |
	ffi := LGitFFI uniqueInstance.
	
	contentPtr := ffi blob_rawcontent: handle.
	
	(1 = (ffi blob_is_binary: handle))
		ifTrue:  [
			contentSize := ffi blob_rawsize: handle.
			^ ffi byteArrayClass onAddress: contentPtr size: contentSize ]
		ifFalse: [ ^ contentPtr readString ]
	
	