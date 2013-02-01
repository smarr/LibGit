tree.h
tree_entry_to_object: object_out repo: repo entry: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_tree_entry_to_object(git_object_ptr * object_out, git_repository_ptr repo, git_tree_entry_ptr entry))