refs.h
reference_target: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_oid_ptr git_reference_target(git_reference_ptr ref))