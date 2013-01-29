examples
shouldNotBeEmpty
	| repo |
	"this depends on the repo. But for the tests it should not be empty"
	repo := self given: #shouldOpen.
	
	repo isEmpty should beFalse.
	
	^ repo