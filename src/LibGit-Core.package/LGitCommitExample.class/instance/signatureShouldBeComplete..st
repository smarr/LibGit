as yet unclassified
signatureShouldBeComplete: author
	author name  should beKindOf: ByteString.
	author email should beKindOf: ByteString.
	author when  should beKindOf: DateAndTime.