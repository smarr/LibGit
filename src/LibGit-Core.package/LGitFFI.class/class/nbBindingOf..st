NativeBoost-Core
nbBindingOf: aTypeName
	^ TypeMap at: aTypeName ifAbsent: [ super nbBindingOf: aTypeName ]