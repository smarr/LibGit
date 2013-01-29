comparing
= anObject
	self == anObject ifTrue: [ ^ true ].
	self class == anObject class ifFalse: [ ^ false ].
	
	^ (LGitRepositoryFFI uniqueInstance
			reference_cmp: handle ref2: (anObject instVarNamed: #handle)) = 0 
	