refs.h
reference_is_branch: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_reference_is_branch(git_reference_ptr ref))