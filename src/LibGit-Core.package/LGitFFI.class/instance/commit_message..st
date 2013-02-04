commit.h
commit_message: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(char * git_commit_message(git_commit_ptr commit))