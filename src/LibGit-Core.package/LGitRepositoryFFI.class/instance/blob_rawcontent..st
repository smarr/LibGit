blob.h
blob_rawcontent: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(void * git_blob_rawcontent(git_blob_ptr blob))