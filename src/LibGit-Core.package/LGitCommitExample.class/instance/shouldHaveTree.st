as yet unclassified
shouldHaveTree
	| tree |
	tree := commit tree.
	
	tree should beKindOf: LGitTree.
	
	^ tree