object.h
object_id: obj 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(git_oid_ptr git_object_id(git_object_ptr obj)) 