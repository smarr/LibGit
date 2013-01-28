repository.h
repository_open: handle on: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_repository_open(git_repository_ptr * handle, char * path))