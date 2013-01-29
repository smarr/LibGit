examples
shouldResolveToDirectReference
	| resolvedRef |
	resolvedRef := headRef resolve.
	
	resolvedRef isSymbolic should be false.
	resolvedRef isDirect should be true.
	
	^ resolvedRef