accessing
author
	| sigPtr |
	sigPtr := LGitRepositoryFFI uniqueInstance commit_author: handle.
	^ LGitSignature from: (LGitSignatureStruct fromPointer: sigPtr)