initialize-release
on: aHandle in: repo
	self == LGitObject ifTrue: [
		self error: 'LGitObject is an abstract class' ].

	^ self basicNew initializeOn: aHandle in: repo