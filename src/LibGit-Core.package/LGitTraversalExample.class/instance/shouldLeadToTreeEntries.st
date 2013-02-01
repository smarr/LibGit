as yet unclassified
shouldLeadToTreeEntries
	| tree entries |
	tree := self given: #shouldLeadToTree.
	
	entries := tree entries.
	entries should beKindOf: Collection. "This might be a too strong assumption."
	
	^ entries