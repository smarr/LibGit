accessing
committer
	| sigPtr |
	sigPtr := LGitRepositoryFFI uniqueInstance commit_committer: handle.
	^ LGitSignature from: (LGitSignatureStruct fromPointer: sigPtr)