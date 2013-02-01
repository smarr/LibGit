tree.h
tree_entrycount: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(size_t git_tree_entrycount(git_tree_ptr tree))