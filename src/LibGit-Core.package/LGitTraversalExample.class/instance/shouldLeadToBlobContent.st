as yet unclassified
shouldLeadToBlobContent
	| blob content |
	blob := self given: #shouldLeadToBlob.

	content := blob rawcontent.

	content should beKindOf: ByteString.

	^ content