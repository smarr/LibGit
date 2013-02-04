comparing
= anObject
	self == anObject ifTrue: [ ^ true ].
	self class == anObject class ifFalse: [ ^ false ].
	
	^ (LGitFFI uniqueInstance
			tree_entry_cmp: handle entry2: (anObject privHandle)) = 0 
	