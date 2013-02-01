as yet unclassified
shouldHaveCommitterAsSignature
	| committer |
	committer := commit committer.
	committer should beKindOf: LGitSignature.
	
	self signatureShouldBeComplete: committer.
	
	^ committer