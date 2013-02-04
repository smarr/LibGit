commit.h
commit_parent_id: commit n: n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_oid_ptr git_commit_parent_id(git_commit_ptr commit, uint32_t n))