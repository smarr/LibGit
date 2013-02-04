commit.h
commit_time: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_time_t git_commit_time(git_commit_ptr commit))