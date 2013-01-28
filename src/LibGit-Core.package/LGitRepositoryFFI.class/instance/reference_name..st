refs.h
reference_name: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(char * git_reference_name(git_reference_ptr ref))