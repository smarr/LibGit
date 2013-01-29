examples
shouldBeBareOrNot
	| repo |
	"this depends on the repo. But for the tests it I will test whether it "
	repo := self given: #shouldOpen.
	
	repo isBare should beKindOf: Boolean.
	
	^ repo