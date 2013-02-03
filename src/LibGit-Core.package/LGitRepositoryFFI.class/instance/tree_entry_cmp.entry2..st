tree.h
tree_entry_cmp: entry1 entry2: entry2
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_tree_entry_cmp(git_tree_entry_ptr entry1, git_tree_entry_ptr entry2))