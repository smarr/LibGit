as yet unclassified
shouldLeadToTreeEntry
	| entries entry |
	entries := self given: #shouldLeadToTreeEntries.
	
	entry := entries first.
	entry should beKindOf: LGitTreeEntry.
	
	^ entry