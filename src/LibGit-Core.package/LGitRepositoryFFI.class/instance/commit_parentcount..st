commit.h
commit_parentcount: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(uint32_t git_commit_parentcount(git_commit_ptr commit))