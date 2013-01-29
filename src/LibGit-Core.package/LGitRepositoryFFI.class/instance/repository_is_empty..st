repository.h
repository_is_empty: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_repository_is_empty(git_repository_ptr repo))