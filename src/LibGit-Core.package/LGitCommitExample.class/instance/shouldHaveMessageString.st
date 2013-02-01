as yet unclassified
shouldHaveMessageString
	| msg |
	msg := commit message.
	
	msg should beKindOf: ByteString.
	msg size should be > 0.
	
	^ msg