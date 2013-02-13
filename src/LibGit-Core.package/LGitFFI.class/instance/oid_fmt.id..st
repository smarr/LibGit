oid.h
oid_fmt: out id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(void git_oid_fmt(char * out, git_oid_ptr id))