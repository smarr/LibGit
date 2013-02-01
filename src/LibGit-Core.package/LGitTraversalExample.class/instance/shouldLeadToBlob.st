as yet unclassified
shouldLeadToBlob
	| entry blob |
	entry := self given: #shouldLeadToTreeEntry.

	blob := entry blob.
	blob should beKindOf: LGitBlob.

	^ blob