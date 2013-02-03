accessing
head
	| headRef resultCode |
	headRef := NBExternalObject new.
	resultCode := LGitRepositoryFFI uniqueInstance repository_head: headRef of: handle.

	self flag: 'handle errors'.
	
	resultCode = 0 ifFalse: [ Halt now. 'some error'. ^ nil ].
	
	^ LGitReference on: headRef in: self