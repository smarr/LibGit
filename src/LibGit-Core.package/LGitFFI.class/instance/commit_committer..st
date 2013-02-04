commit.h
commit_committer: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_signature * git_commit_committer(git_commit_ptr commit))