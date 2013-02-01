utils
byteArrayCls
	^ byteArrayCls ifNil: [ byteArrayCls := NBExternalArray ofType: NBUInt8 ]