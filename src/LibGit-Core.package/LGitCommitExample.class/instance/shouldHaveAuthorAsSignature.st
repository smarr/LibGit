as yet unclassified
shouldHaveAuthorAsSignature
	| author |
	author := commit author.
	author should beKindOf: LGitSignature.
	
	self signatureShouldBeComplete: author.
	
	^ author