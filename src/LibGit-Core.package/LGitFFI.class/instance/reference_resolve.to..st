refs.h
reference_resolve: ref to: out 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_reference_resolve(git_reference_ptr * out, git_reference_ptr ref))