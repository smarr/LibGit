clone.h
clone: out url: url local_path: local_path options: options 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_return_t git_clone(git_repository_ptr * out, char_ptr url, char_ptr local_path, git_clone_options * options))