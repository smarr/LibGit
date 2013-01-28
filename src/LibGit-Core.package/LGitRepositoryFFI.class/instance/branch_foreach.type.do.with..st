branch.h
branch_foreach: repo type: typeFlags do: block with: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_branch_foreach(git_repository_ptr repo, NBUInt32 typeFlags, LGitBranchForeachCb block, void * payload)) options: #( optMayGC )