utils
byteArrayClass
	^ byteArrayClass ifNil: [ byteArrayCls := NBExternalArray ofType: NBUInt8 ]