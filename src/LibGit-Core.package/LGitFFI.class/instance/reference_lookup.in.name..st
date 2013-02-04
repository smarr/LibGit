refs.h
reference_lookup: out in: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_return_t git_reference_lookup(git_reference_ptr * out, git_repository_ptr repo, char_ptr name))