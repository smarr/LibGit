commit.h
commit_author: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_signature * git_commit_author(git_commit_ptr commit))