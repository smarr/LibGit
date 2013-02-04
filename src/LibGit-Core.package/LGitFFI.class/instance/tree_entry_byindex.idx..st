tree.h
tree_entry_byindex: tree idx: idx 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_tree_entry_ptr git_tree_entry_byindex(git_tree_ptr tree, size_t idx))