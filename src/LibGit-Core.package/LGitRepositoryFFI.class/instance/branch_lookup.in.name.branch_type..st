branch.h
branch_lookup: out in: repo name: branch_name branch_type: branch_type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_return_t git_branch_lookup(git_reference_ptr * out, git_repository_ptr repo, char * branch_name, git_branch_t branch_type))