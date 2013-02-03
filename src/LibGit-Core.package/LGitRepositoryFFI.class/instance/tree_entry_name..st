tree.h
tree_entry_name: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(char_ptr git_tree_entry_name(git_tree_entry_ptr entry))