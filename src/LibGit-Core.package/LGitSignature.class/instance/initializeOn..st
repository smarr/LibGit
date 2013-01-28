initialize-release
initializeOn: aHandle
	aHandle name ifNil: [ ^ self ]. "No signature."
	
	name  := aHandle name readString.
	email := aHandle email readString.
	when  := aHandle when asDateAndTime.