branch.h
branch_tracking: out branch: branch 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_return_t git_branch_tracking(git_reference_ptr * out, git_reference_ptr branch))