blob.h
blob_rawsize: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_off_t git_blob_rawsize(git_blob_ptr blob))