tree.h
tree_entry_type: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_otype git_tree_entry_type(git_tree_entry_ptr entry))