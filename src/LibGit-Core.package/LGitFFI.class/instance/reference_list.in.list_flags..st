refs.h
reference_list: array in: repo list_flags: list_flags 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_reference_list(git_strarray * array, git_repository_ptr repo, uint32_t list_flags))