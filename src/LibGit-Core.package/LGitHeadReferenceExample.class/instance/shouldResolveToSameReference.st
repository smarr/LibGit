examples
shouldResolveToSameReference
	| resolvedRef |
	resolvedRef := self given: #shouldResolveToDirectReference.
	
	(resolvedRef = headRef) should be true.
	
	"but not be the same object"
	resolvedRef should not == headRef. 