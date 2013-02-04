accessing
committer
	| sigPtr |
	sigPtr := LGitFFI uniqueInstance commit_committer: handle.
	^ LGitSignature from: (LGitSignatureStruct fromPointer: sigPtr)