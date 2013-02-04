accessing
author
	| sigPtr |
	sigPtr := LGitFFI uniqueInstance commit_author: handle.
	^ LGitSignature from: (LGitSignatureStruct fromPointer: sigPtr)