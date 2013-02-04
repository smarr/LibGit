comparing
= anObject
	self == anObject ifTrue: [ ^ true ].
	self class == anObject class ifFalse: [ ^ false ].
	
	^ (LGitFFI uniqueInstance
			reference_cmp: handle ref2: (anObject privHandle)) = 0 
	