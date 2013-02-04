refs.h
reference_cmp: ref1 ref2: ref2 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_reference_cmp(git_reference_ptr ref1, git_reference_ptr ref2))