blob.h
blob_is_binary: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_blob_is_binary(git_blob_ptr blob))