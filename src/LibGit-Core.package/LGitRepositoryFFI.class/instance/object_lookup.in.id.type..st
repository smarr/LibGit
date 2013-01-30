object.h
object_lookup: object in: repo id: id type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(int git_object_lookup(git_object_ptr * object, git_repository_ptr repo, git_oid_ptr id, git_otype type))