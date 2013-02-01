initialize-release
on: aHandle in: aRepoHandle
	self == LGitObject ifTrue: [
		self error: 'LGitObject is an abstract class' ].

	^ self basicNew initializeOn: aHandle in: aRepoHandle