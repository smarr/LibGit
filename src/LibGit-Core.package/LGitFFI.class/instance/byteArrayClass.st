utils
byteArrayClass
	^ byteArrayClass ifNil: [ byteArrayClass := NBExternalArray ofType: NBUInt8 ]