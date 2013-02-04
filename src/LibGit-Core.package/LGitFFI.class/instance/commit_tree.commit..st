commit.h
commit_tree: tree_out commit: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_commit_tree(git_tree_ptr * tree_out, git_commit_ptr commit))