accessing
message
	| msg encoding |
	encoding := LGitRepositoryFFI uniqueInstance commit_message_encoding: handle.
	msg := LGitRepositoryFFI uniqueInstance commit_message: handle.
	
	self flag: 'use encoding to properly read the message'.
	^ msg readString