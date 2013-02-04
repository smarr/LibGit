commit.h
commit_message_encoding: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(char * git_commit_message_encoding(git_commit_ptr commit))