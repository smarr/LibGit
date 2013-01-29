repository.h
repository_is_bare: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_repository_is_bare(git_repository_ptr repo))