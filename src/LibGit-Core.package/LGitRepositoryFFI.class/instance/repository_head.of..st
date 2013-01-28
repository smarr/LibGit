repository.h
repository_head: refHandle of: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_repository_head(git_reference_ptr * refHandle, git_repository_ptr repo))