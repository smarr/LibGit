commit.h
commit_lookup: objectId in: repo as: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_commit_lookup(git_commit_ptr * commit, git_repository_ptr repo, git_oid_ptr objectId))