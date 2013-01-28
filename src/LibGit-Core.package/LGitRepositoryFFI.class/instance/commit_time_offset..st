commit.h
commit_time_offset: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_commit_time_offset(git_commit_ptr commit))